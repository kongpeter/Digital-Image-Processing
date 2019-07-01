a=imread('car_license_plate.png');%read the original car license
b=imread('alphanumeric_templates.png');%read the template
%obtain the threshold value of two images
x1=graythresh(a);
x2=graythresh(b);
%change the RGB image into binary image
a_bin=im2bw(a,x1);
b_bin=im2bw(b,x2);
%display the image
figure,imshow(a_bin);
figure,imshow(b_bin);
%write the image into computer
imwrite(a_bin,'Car_2bw.png');
imwrite(b_bin,'Al_2bw.png');
