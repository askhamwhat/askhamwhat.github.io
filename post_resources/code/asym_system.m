
%%% from "Detecting causality in complex
%%% ecosystems." 

% system

% x(t+1) = x(t)*(rx-rx*x(t)-bxy*y(t))
% y(t+1) = y(t)*(ry-ry*y(t)-byx*x(t))

% parameters for run

rx = 3.7;
ry = 3.7;
bxy = 0;
byx = .32;
x1 = .2;
y1 = .4;
n = 1000;

% parameters for ccm

ie = 2; % dimension of manifolds

% simulate system

x = zeros(n,1);
y = zeros(n,1);

x(1) = x1;
y(1) = y1;

for i = 2:n
    x(i) = x(i-1)*(rx-rx*x(i-1)-bxy*y(i-1));
    y(i) = y(i-1)*(ry-ry*y(i-1)-byx*x(i-1));
end

% set up x and y manifolds

lman = n-ie+1;

xman = zeros(lman,ie);
yman = zeros(lman,ie);

for i = 1:ie
    xman(:,i) = x(i:lman+i-1);
    yman(:,i) = y(i:lman+i-1);
end

% compute nearest neighbors for each 
% point on manifold

k = ie+2;

idx_x = knnsearch(xman,xman,'K',k);
idx_x = idx_x(:,2:end); %ignore self...
idx_y = knnsearch(yman,yman,'K',k);
idx_y = idx_y(:,2:end);

% use these to predict y from x and vice versa

wts_x = zeros(ie+1,1);
wts_y = zeros(ie+1,1);

dist_x = wts_x;
dist_y = wts_y;

y_mx = zeros(lman,1);
x_my = zeros(lman,1);

for i = 1:lman
    xtemp = xman(i,:);
    ytemp = yman(i,:);
    for j = 1:ie+1
        dist_x(j) = norm(xman(idx_x(i,j),:)-xtemp);
        dist_y(j) = norm(yman(idx_y(i,j),:)-ytemp);
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

x_comp = x(ie:end);
y_comp = y(ie:end);

h = figure

subplot(1,2,1)
scatter(x_comp,x_my,'x')
str = 'Estimated $\hat{X}|M_Y$ vs observed $X$';
title(str,'interpreter','latex')
axis equal

subplot(1,2,2)
scatter(y_comp,y_mx,'x')
str = 'Estimated $\hat{Y}|M_X$ vs observed $Y$';
title(str,'interpreter','latex')
axis equal

print(h,'asymmetric_coupling','-dpng','-r300')
