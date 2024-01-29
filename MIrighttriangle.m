function [Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r] = MIrighttriangle(theta,b,h,CORD)

Ix = b*(h^3)/36+b*h*(CORD(2)^2)/2;
Iy = h*(b^3)/36+b*h*(CORD(1)^2)/2;
Ixy=-(b^2)*(h^2)/72+b*h*CORD(1)*CORD(2)*0.5; 
p=(Ix+Iy)/2;
r=sqrt((Ix-p)^2+Ixy^2);
if Ixy~=0
thetamax=asind(Ixy/(r))/2;
else
    thetamax=0;
end
if Ix>=Iy
    Ixmax=p+r; 
    Iymax=p-r; 
    Ix=(Ixmax-p)*cosd(2*thetamax+2*theta)+p;
    Iy=p-(p-Iymax)*cosd(2*thetamax+2*theta);
else
    Ixmax=p-r; 
    Iymax=p+r; 
    Ix=p-(p-Ixmax)*cosd(2*thetamax+2*theta);
    Iy=(Iymax-p)*cosd(2*thetamax+2*theta)+p;    
end
thetamax=thetamax+theta;

end