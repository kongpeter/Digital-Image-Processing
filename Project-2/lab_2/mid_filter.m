function d=mid_filter(x,n)     
[height, width]=size(x);   %input image,p>n,q>n  
x1=double(x);  %change data type to double
x2=x1;  
for i=1:height-n+1  
    for j=1:height-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)); %from(i,j),n row, n column  
        e=c(1,:);      %matrix first row  
        for u=2:n  
            e=[e,c(u,:)];           
        end  
        mm=median(e);      %take the median value  
        x2(i+(n-1)/2,j+(n-1)/2)=mm;   %exchange the pixel with new median value  
    end  
end    
d=uint8(x2); 
