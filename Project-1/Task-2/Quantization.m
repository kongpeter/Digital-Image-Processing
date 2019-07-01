A=imread('lenna512.bmp');
G=A./16;
image(G);
axis on;
colormap(gray(16))
colorbar;