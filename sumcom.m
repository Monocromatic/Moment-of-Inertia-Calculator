function [Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r] = sumcom(I)





soma_colunas = sum(I, 1);
Ix=soma_colunas(1);
Iy=soma_colunas(2);
Ixy=soma_colunas(3);
Ixmax=soma_colunas(4);
Iymax=soma_colunas(5);
p=soma_colunas(7);
r=abs(soma_colunas(8));
if Ixy~=0
thetamax=asind(Ixy/(r))/2;
else
    thetamax=0;
end

end