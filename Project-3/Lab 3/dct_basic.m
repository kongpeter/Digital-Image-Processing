function F=dct_basic(N)
f=zeros(N);
F=cell(N,N);
for u=0:N-1%define u,row
    for v=0:N-1%define v,column
        for m=0:N-1
            for n=0:N-1
f(m+1,n+1)=cos((2*m+1)*u*pi/2/N)*cos((2*n+1)*v*pi/2/N);
            end
        end
        F{u+1,v+1}=f;%define a(u) and a(v)
    end
end
%%%%%%%%%%%%%%%multiply v and u
F{1,1}=F{1,1}/N;%when u an v equals to 0,N=1
for o=2:N
    F{1,o}=sqrt(2)*F{1,o}/N;
    F{o,1}=sqrt(2)*F{o,1}/N;
end
for o=2:N%whenu,v are not equals to 0
    for p=2:N
        F{o,p}=2*F{u,v}/N;
    end 
end 
end
