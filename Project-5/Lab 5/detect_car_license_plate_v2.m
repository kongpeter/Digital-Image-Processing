%The two input should be the original images
function str = detect_car_license_plate_v2(im_car,im_template)
%obtain the cropped car images
target=car_order(im_car);
%obtain the cropped template images
template=template_word_order(im_template);
%define a new matrix
output=zeros(8,1);
word=char(['A':'Z' '0':'9']);
%apply the inverse to the foreground
for k=1:36
    template_in{k,1}=~template{k,1};
end
%apply erosion to the background
for i=1:36
    template_in_back{i,1}=imerode(template_in{i,1},strel('disk',3));
end
%define a new chart
for i=1:8
    for j=1:36
       [~,N]=bwlabel(bwhitmiss(target{i,1},template{j,1},template_in_back{j,1}));
        if(N)
            output(i)=word(j);
            break;
        end
    end
end
%output the results
str=output;
fprintf('%s',str);
