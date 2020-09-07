clear face1;
face = imread('face.jpg');

for c = 1:18
    for l = 1:18
        face1(l,c,1) = face(l,c,1);
        face1(l,c,2) = face(l,c,2);
        face1(l,c,3) = face(l,c,3);
    end
end

imshow(face1);
imwrite(face1,'face1.jpg')

