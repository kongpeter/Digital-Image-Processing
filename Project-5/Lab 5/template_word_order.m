function database=template_word_order(im)
x2=graythresh(im);
b_bin=im2bw(im,x2);

state=regionprops(b_bin,'BoundingBox');
position=cat(1,state.BoundingBox);

%order the template
Tem_A=imcrop(b_bin,position(2,:));
Tem_0=imcrop(b_bin,position(3,:));
Tem_5=imcrop(b_bin,position(4,:));
Tem_K=imcrop(b_bin,position(5,:));
Tem_U=imcrop(b_bin,position(6,:));
Tem_6=imcrop(b_bin,position(7,:));
Tem_1=imcrop(b_bin,position(8,:));
Tem_B=imcrop(b_bin,position(9,:));
Tem_V=imcrop(b_bin,position(10,:));
Tem_L=imcrop(b_bin,position(11,:));
Tem_W=imcrop(b_bin,position(12,:));
Tem_2=imcrop(b_bin,position(13,:));
Tem_7=imcrop(b_bin,position(14,:));
Tem_M=imcrop(b_bin,position(15,:));
Tem_C=imcrop(b_bin,position(16,:));
Tem_3=imcrop(b_bin,position(17,:));
Tem_8=imcrop(b_bin,position(18,:));
Tem_X=imcrop(b_bin,position(19,:));
Tem_D=imcrop(b_bin,position(20,:));
Tem_N=imcrop(b_bin,position(21,:));
Tem_4=imcrop(b_bin,position(22,:));
Tem_9=imcrop(b_bin,position(23,:));
Tem_Y=imcrop(b_bin,position(24,:));
Tem_O=imcrop(b_bin,position(25,:));
Tem_E=imcrop(b_bin,position(26,:));
Tem_Z=imcrop(b_bin,position(27,:));
Tem_F=imcrop(b_bin,position(28,:));
Tem_P=imcrop(b_bin,position(29,:));
Tem_G=imcrop(b_bin,position(30,:));
Tem_Q=imcrop(b_bin,position(31,:));
Tem_H=imcrop(b_bin,position(32,:));
Tem_R=imcrop(b_bin,position(33,:));
Tem_S=imcrop(b_bin,position(34,:));
Tem_I=imcrop(b_bin,position(35,:));
Tem_J=imcrop(b_bin,position(36,:));
Tem_T=imcrop(b_bin,position(37,:));

%save into one cell
Tem=cell(36,1);

Tem{1,1}=Tem_A;
Tem{2,1}=Tem_B;
Tem{3,1}=Tem_C;
Tem{4,1}=Tem_D;
Tem{5,1}=Tem_E;
Tem{6,1}=Tem_F;
Tem{7,1}=Tem_G;
Tem{8,1}=Tem_H;
%add the boundary to the letter 'I'
Tem{9,1}=padarray(Tem_I,[5,5],'both');
Tem{10,1}=Tem_J;
Tem{11,1}=Tem_K;
Tem{12,1}=Tem_L;
Tem{13,1}=Tem_M;
Tem{14,1}=Tem_N;
Tem{15,1}=Tem_O;
Tem{16,1}=Tem_P;
Tem{17,1}=Tem_Q;
Tem{18,1}=Tem_R;
Tem{19,1}=Tem_S;
Tem{20,1}=Tem_T;
Tem{21,1}=Tem_U;
Tem{22,1}=Tem_V;
Tem{23,1}=Tem_W;
Tem{24,1}=Tem_X;
Tem{25,1}=Tem_Y;
Tem{26,1}=Tem_Z;

Tem{27,1}=Tem_0;
Tem{28,1}=Tem_1;
Tem{29,1}=Tem_2;
Tem{30,1}=Tem_3;
Tem{31,1}=Tem_4;
Tem{32,1}=Tem_5;
Tem{33,1}=Tem_6;
Tem{34,1}=Tem_7;
Tem{35,1}=Tem_8;
Tem{36,1}=Tem_9;
%Apply erosion to the previous cell
for i=1:36
    Tem_new{i,1}=imerode(Tem{i,1},strel('disk',1));
end

database=Tem_new;
