
%%% Figure 1 from "Detecting causality in complex
%%% ecosystems." Demonstrates mirage correlations/
%%% anti-correlations/uncorrelations

% system

% x(t+1) = x(t)*(rx-rx*x(t)-bxy*y(t))
% y(t+1) = y(t)*(ry-ry*y(t)-byx*x(t))

% parameters for run

rx = 3.8;
ry = 3.5;
bxy = .02;
byx = .1;
x1 = .4;
y1 = .2;
n = 2000;

% parameters for stats

nwindow = 20;

x = zeros(n,1);
y = zeros(n,1);

x(1) = x1;
y(1) = y1;

for i = 2:n
    x(i) = x(i-1)*(rx-rx*x(i-1)-bxy*y(i-1));
    y(i) = y(i-1)*(ry-ry*y(i-1)-byx*x(i-1));
end

% compute moving correlation for 
% windows of size nwindow

x2 = x.^2;
y2 = y.^2;
xy = x.*y;

mask = ones(nwindow,1);

ex = conv(x,mask)/nwindow;
ex2 = conv(x2,mask)/nwindow;
exy = conv(xy,mask)/nwindow;
ey = conv(y,mask)/nwindow;
ey2 = conv(y2,mask)/nwindow;

rho = (exy-ex.*ey)./(sqrt((ex2-ex.*ex).*(ey2-ey.*ey)));

rho = rho(nwindow:end-nwindow);

% find windows of length nwindow which are the
% most correlated, most anti-correlated, and 
% least correlated.

[rhomax,imax] = max(rho);
[rhomin,imin] = min(rho);
[rhoabsmin,iabsmin] = min(abs(rho));

h = figure

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])

subplot(2,2,1)

plot(rho)
title('correlation, moving window','interpreter','latex')

subplot(2,2,2)

plot(x(imax:imax+nwindow-1))
hold on
plot(y(imax:imax+nwindow-1))
str = sprintf('correlated mirage, $$\\rho$$ = %f',rhomax);
title(str,'interpreter','latex')

subplot(2,2,3)

plot(x(imin:imin+nwindow-1))
hold on
plot(y(imin:imin+nwindow-1))
str = sprintf('anti-correlated mirage, $$\\rho$$ = %f',rhomin);
title(str,'interpreter','latex')

subplot(2,2,4)

plot(x(iabsmin:iabsmin+nwindow-1))
hold on
plot(y(iabsmin:iabsmin+nwindow-1))
str = sprintf('uncorrelated mirage, $$\\rho$$ = %f',rhoabsmin);
title(str,'interpreter','latex')

print(h,'correlation-mirage','-dpdf','-r0')