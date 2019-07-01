%the two input should be the original photo
function [str] = detect_car_license_plate_v1(im_car,im_template)
%call the crop function
target=car_order(im_car);
template=template_word_order(im_template);
%define a new matrix
output=zeros(8,1);
%define a new chart
word=char(['A':'Z' '0':'9']);
for i=1:8
    for j=1:36
       [L,N]=bwlabel(imerode(target{i,1},template{j,1}));
        if(N)
            output(i)=word(j);
            break;
        end
    end
end
%output the results
fprintf('%s',output);
str=output;
