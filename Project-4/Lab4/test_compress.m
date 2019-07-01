IM=imread('lenna512.bmp');%read the original photo
Qmat=Qmat_generate(16);%generate the quantify matrix
QP=99;%define QP
N=16;%defien N
Z='test.txt';%input file_name
Rate=compress_im(IM,Qmat,QP,N,Z);%obtain the rate
L=decompress_im(Qmat,QP,N,Z);%apply the compressed photo
PSNR=psnr(L,IM);%calculate the psnr