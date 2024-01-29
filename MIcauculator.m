clear,clc
times=input('Number of figures');
I=zeros(times,8);

for u=1:times
     choice=input('What you want calculate? 1 square 2 triangle');
switch choice
    case 1
        [h,b,theta,CORD,operation] = quests;
        [Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r] = MIsquare(theta,b,h,CORD);
        if operation==1
            result=[Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r];
        else
            result=-1*[Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r];
        end

    case 2
        [h,b,theta,CORD,operation] = quests;
        [Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r] = MIrighttriangle(theta,b,h,CORD);
        if operation==1
            result=[Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r];
        else
            result=-1*[Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r];
        end
end
I(u,:)=result;
end
[Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r] = sumcom(I);

[circle] = Mohrcircle(Ix,Iy,Ixy,Ixmax,Iymax,thetamax,p,r);