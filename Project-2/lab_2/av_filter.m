function d=av_filter(x,n)     
a(1:n,1:n)=1;   %a=n¡Án matrix  
[hight, width]=size(x);   %input matrix, and hight>n,width>n  
x1=double(x);  
x2=x1;  
for i=1:hight-n+1  
    for j=1:width-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)).*a; %take the elements from c, times with a  
        s=sum(sum(c));                 %sum all elements in c  
        x2(i+(n-1)/2,j+(n-1)/2)=s/(n*n); %exchange the pixels with new calculation results  
    end  
end    
d=uint8(x2);