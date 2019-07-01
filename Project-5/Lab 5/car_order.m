function car=car_order(im)
x1=graythresh(im);
a_bin=im2bw(im,x1);

state=regionprops(a_bin,'BoundingBox');
%obtain the previouse position information
position=cat(1,state.BoundingBox);

%cropping the image into single characters
target_1=imcrop(a_bin,position(5,:));
target_2=imcrop(a_bin,position(6,:));
target_3=imcrop(a_bin,position(7,:));
target_4=imcrop(a_bin,position(8,:));
target_5=imcrop(a_bin,position(9,:));
target_6=imcrop(a_bin,position(10,:));
target_7=imcrop(a_bin,position(11,:));
target_8=imcrop(a_bin,position(12,:));

%save all the characters into one cell
Target=cell(8,1);
%save the cell
Target{1,1}=target_1;
Target{2,1}=target_2;
Target{3,1}=target_3;
Target{4,1}=target_4;
Target{5,1}=target_5;
Target{6,1}=target_6;
Target{7,1}=target_7;
Target{8,1}=target_8;

car=Target;
