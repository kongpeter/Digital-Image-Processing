target=imread('Car_2bw.png');
%calculate the information of foreground
state=regionprops(target,'BoundingBox');
%obtain the previouse position information
position=cat(1,state.BoundingBox);

%cropping the image into single characters
target_1=imcrop(target,position(5,:));
target_2=imcrop(target,position(6,:));
target_3=imcrop(target,position(7,:));
target_4=imcrop(target,position(8,:));
target_5=imcrop(target,position(9,:));
target_6=imcrop(target,position(10,:));
target_7=imcrop(target,position(11,:));
target_8=imcrop(target,position(12,:));

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
%display the results after cropping
for i=1:8
    subplot(2,4,i),imshow(Target{i,1});
end
