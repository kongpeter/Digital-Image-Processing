a=imread('Coins.jpg');%read the original photo
a=im2double(a);%change it to double
subplot(2,3,1),imshow(a),title('Original Photo');
a=rgb2hsv(a);%use hsv to display its RGB photo
a=a(:,:,2);%task the second floor of its RGB
x=graythresh(a);%obtain the threshold value
b=im2bw(a,x);%transform the photo into binary
subplot(2,3,2),imshow(b),title('Binary Image');
b=~b;%inverse it, background to foreground
subplot(2,3,3),imshow(b);
se=strel('disk',8);%set the SE
c=imclose(b,se);%apply close
subplot(2,3,4),imshow(c);
se1=strel('disk',80);%set SE
d=imerode(c,se1);%apply erosion
subplot(2,3,5),imshow(d);
[L,num]=bwlabel(d);%count the foreground points in ths photo
num;%obtain the number of coins

