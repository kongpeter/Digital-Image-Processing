function output = zero_padding(input,resize)
input_size=size(input);%obtain the photo size of input
if input_size>=resize%when target size smaller than the original size
    disp('wrong input resize');
    return
end
%obtain the four side
input_left=(resize(2)-input_size(2))/2;
input_right=(resize(2)-input_size(2))/2;
input_top=(resize(1)-input_size(1))/2;
input_bottom=(resize(1)-input_size(1))/2;
%make the new size to 0
output_1=[zeros(input_top,resize(2))];
output_2=[zeros(input_size(2),input_left) input zeros(input_size(2),input_right)];
output_3=[zeros(input_bottom,resize(2))];
%obtain the new matrix, new photo
output=[output_1;output_2;output_3];
end
