function [circle] = Mohrcircle(Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r)

th = 0:pi/50:2*pi;
xunit = r * cos(th) + p;
yunit = r * sin(th);
circle = plot(xunit, yunit);

hold on

plot(Ix, 0, 'r.', 'LineWidth', 2, 'MarkerSize', 16);
plot(Iy, 0, 'b.', 'LineWidth', 2, 'MarkerSize', 16);
plot(p, 0, 'k+', 'LineWidth', 2, 'MarkerSize', 8);
if thetamax>=0
    th = 0:1/360:abs(deg2rad(2*thetamax)) ;
    f = r/10;
else
    th = -(0:1/360:abs(deg2rad(2*thetamax))) ;
    f = -r/10;
end

xx = abs(f)*cos(th)+p; yy = abs(f)*sin(th);
str_e = sprintf('%.2f',2*thetamax);
text(p+abs(f),f,str_e)
if (Ix>Iy && Ixmax>Iymax)    
    plot([p Ix],[0 Ixy],xx,yy)  
    xticks([Iymax Iy p Ix Ixmax])
elseif (Iy>Ix && Ixmax<Iymax)
    plot([p Iy],[0 Ixy],xx,yy)    
    xticks([Ixmax Ix p Iy Iymax])
elseif (Ixmax>Iymax)
    plot([p Ix],[0 Ixy],xx,yy)
    xticks([Iymax p Ixmax])
elseif (Iymax>Ixmax)
    plot([p Iy],[0 Ixy],xx,yy)
    xticks([Ixmax p Iymax])
else
    plot([p Ix],[0 Ixy],xx,yy)
    xticks(p)
end
hold off
axis equal
legend('','Ix','Iy')
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
end