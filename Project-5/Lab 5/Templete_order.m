a=imread('Al_2bw.png');
state=regionprops(a,'BoundingBox');
position=cat(1,state.BoundingBox);

%order the template
Tem_A=imcrop(a,position(2,:));
Tem_0=imcrop(a,position(3,:));
Tem_5=imcrop(a,position(4,:));
Tem_K=imcrop(a,position(5,:));
Tem_U=imcrop(a,position(6,:));
Tem_6=imcrop(a,position(7,:));
Tem_1=imcrop(a,position(8,:));
Tem_B=imcrop(a,position(9,:));
Tem_V=imcrop(a,position(10,:));
Tem_L=imcrop(a,position(11,:));
Tem_W=imcrop(a,position(12,:));
Tem_2=imcrop(a,position(13,:));
Tem_7=imcrop(a,position(14,:));
Tem_M=imcrop(a,position(15,:));
Tem_C=imcrop(a,position(16,:));
Tem_3=imcrop(a,position(17,:));
Tem_8=imcrop(a,position(18,:));
Tem_X=imcrop(a,position(19,:));
Tem_D=imcrop(a,position(20,:));
Tem_N=imcrop(a,position(21,:));
Tem_4=imcrop(a,position(22,:));
Tem_9=imcrop(a,position(23,:));
Tem_Y=imcrop(a,position(24,:));
Tem_O=imcrop(a,position(25,:));
Tem_E=imcrop(a,position(26,:));
Tem_Z=imcrop(a,position(27,:));
Tem_F=imcrop(a,position(28,:));
Tem_P=imcrop(a,position(29,:));
Tem_G=imcrop(a,position(30,:));
Tem_Q=imcrop(a,position(31,:));
Tem_H=imcrop(a,position(32,:));
Tem_R=imcrop(a,position(33,:));
Tem_S=imcrop(a,position(34,:));
Tem_I=imcrop(a,position(35,:));
Tem_J=imcrop(a,position(36,:));
Tem_T=imcrop(a,position(37,:));

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
Tem{9,1}=Tem_I;
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
%display them
for i=1:36
    subplot(6,6,i),imshow(Tem{i,1});
end


for i=1:36
    Tem_new{i,1}=bwmorph(Tem{i,1},'shrink',1);
end

