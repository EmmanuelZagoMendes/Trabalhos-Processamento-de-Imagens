clear original;
clear otimizada;
original = imread('img.bmp');
[m,n]=size(original);
for i = 2:m-2
    for j=2:n-2
        otimizada(i,j)=median([
            original(i-1,j+1),original(i,j+1),original(i+1,j+1),original(i+2,j+1);
            original(i-1,j),original(i,j),original(i+1,j),original(i+2,j+1);
            original(i-1,j-1),original(i,j-1),original(i+1,j-1),original(i+2,j-1);
            original(i-1,j+2),original(i,j+2),original(i+1,j+2),original(i+2,j+2)
        ]);
    end    
end
imwrite(otimizada, 'daniel-emmanuel-lucian_otimizada.png');
subplot(1,2,1);
imshow(original);
subplot(1,2,2);
imshow(otimizada);
