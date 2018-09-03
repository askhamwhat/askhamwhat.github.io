
%%% from "Detecting causality in complex
%%% ecosystems." 

% data from didinium paramecium experiment

% References

% Veilleux (1976) "The analysis of a predatory interaction between 
% Didinium and Paramecium", Masters thesis, University of Alberta. 

% Jost & Ellner (2000) "Testing for predator dependence in 
% predator-prey dynamics: a non-parametric approach", Proceedings of 
% the Royal Society of London B, 267, 1611-1620.

% Data source: http://robjhyndman.com/tsdldata/data/veilleux.dat


load vel-11a.dat

par = vel_11a(:,2);
did = vel_11a(:,3);

% remove transient data from beginning 
% of data collection

par = par(11:end);
did= did(11:end);

% normalize data

mpar = sum(par)/length(par);
par = par-mpar;
par = par/sqrt(sum(par.^2)/length(par));
par = par + 1; % supplement said unit mean and variance...

mdid = sum(did)/length(did);
did = did-mdid;
did = did/sqrt(sum(did.^2)/length(did));
did = did + 1; % supplement said unit mean and variance...

x = par;
y = did;

n = length(x);

% parameters for ccm

ie = 3; % dimension of manifolds

% set up x and y manifolds

lman = n-ie+1;

xman = zeros(lman,ie);
yman = zeros(lman,ie);

for i = 1:ie
    xman(:,i) = x(i:lman+i-1);
    yman(:,i) = y(i:lman+i-1);
end

k = ie+2;

rhoxs = zeros(n,1);
rhoys = zeros(n,1);
ls = zeros(n,1);

ind = 1;

% vary the length of the data collection
for l = 10:1:n
    
    lmant = l-ie+1;
    
    % average over runs of length L from all starting
    % points in data
    for j = 1:lman-lmant+1
            
        indeces = j:j+lmant-1;

        
% compute nearest neighbors for each 
% point on manifold

        
        idx_x = knnsearch(xman(indeces,:),xman(indeces,:),'K',k);
        idx_x = idx_x(:,2:end); %ignore self...
        idx_y = knnsearch(yman(indeces,:),yman(indeces,:),'K',k);
        idx_y = idx_y(:,2:end);
        
        idx_x = idx_x+j-1;
        idx_y = idx_y+j-1;

% use these to predict y from x and vice versa

        wts_x = zeros(ie+1,1);
        wts_y = zeros(ie+1,1);

        dist_x = wts_x;
        dist_y = wts_y;

        y_mx = zeros(lmant,1);
        x_my = zeros(lmant,1);

        for i = 1:lmant
            itemp = indeces(i);
            xtemp = xman(itemp,:);
            ytemp = yman(itemp,:);
            for jj = 1:ie+1
                dist_x(jj) = norm(xman(idx_x(i,jj),:)-xtemp);
                dist_y(jj) = norm(yman(idx_y(i,jj),:)-ytemp);
            end
            xmin = min(dist_x);
            ymin = min(dist_y);
            wts_x = exp(-dist_x/xmin);
            wts_y = exp(-dist_y/ymin);
            xsum = sum(wts_x);
            ysum = sum(wts_y);
            wts_x = wts_x/xsum;
            wts_y = wts_y/ysum;

            y_mx(i) = sum(wts_x.*y(idx_x(i,:)+ie-1));
            x_my(i) = sum(wts_y.*x(idx_y(i,:)+ie-1));
        end

    % compare the prediction to the known value
    % for these times ...
    
        x_comp = x(ie+j-1:ie+lmant+j-2);
        y_comp = y(ie+j-1:ie+lmant+j-2);
    
        rhox = corrcoef(x_comp,x_my);
        rhoy = corrcoef(y_comp,y_mx);
   
        rhoxs(ind) = rhoxs(ind) + rhox(1,2);
        rhoys(ind) = rhoys(ind) + rhoy(1,2);
        
    end
    
    rhoxs(ind) = rhoxs(ind)/(lman-lmant+1);  
    rhoys(ind) = rhoys(ind)/(lman-lmant+1);  
    ls(ind) = l;
    ind = ind+1;
    
end
    
lls = ind-1;
    

h = figure

plot(ls(1:lls),rhoxs(1:lls),'b',ls(1:lls),rhoys(1:lls),'g')
strx = '$\hat{X}|M_Y$';
stry = '$\hat{Y}|M_X$';
hleg = legend(strx,stry,'location','southeast')
set(hleg,'interpreter','latex')
str = '$\rho$';
ylabel(str,'interpreter','latex')
str = '$L$';
xlabel(str,'interpreter','latex')
title('Paramecium $X$ and Didinium $Y$ cross map quality','interpreter','latex')

print(h,'didinium_paramecium','-dpng','-r300')
