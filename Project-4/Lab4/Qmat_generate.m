%generate the Qmat 
function A=Qmat_generate(N)
if(N<=0)
    disp('Please input N>0');
end 

for i=12:-1:1
    B(1:2^i-1,1:2^i-1)=2^(i-1);
end
A=B(1:N,1:N);
return