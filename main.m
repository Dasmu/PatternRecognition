function main

load('nonskin.mat')
load('skin.mat')

[CovSkin,MeanSkin] = lhood(sdata);
[CovNoSkin,MeanNoSkin] = lhood(ndata);


A = imread('test.png');
image(A)
B = im2double(A);
whos B
binaryImage = zeros(786,1200,3);
%image(binaryImage);
% pix = [B(1,1,1),B(1,1,2),B(1,1,3)]

for i = 1:786
    for k = 1:1200
        pix = [B(i,k,1);B(i,k,2);B(i,k,3)];
        color = isSkin(pix,CovSkin,MeanSkin,CovNoSkin,MeanNoSkin);
        
        binaryimage(i,k,1) = color;
        binaryimage(i,k,2) = color;
        binaryimage(i,k,3) = color;
    end
end
figure, imshow(binaryimage)
%image(binaryImage);


% [X,map,alpha] = imread('image.png');
% whos map
% if ~isempty(map)
%     Im = ind2rgb(X,map);
% end
