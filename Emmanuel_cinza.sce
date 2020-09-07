clear face;
clear cmedia;
clear cinza;
face=imread('face1.jpg');
cinza=rgb2gray(face);
for c=1:18
    for l=1:18
        umcanal (l,c)=face(l,c,1);
    end
end

for c=1:18
    for l=1:18
        cmedia(l,c)=uint8((uint16(face(l,c,1))+uint16(face(l,c,2))+uint16(face(l,c,3)))/3);
    end
end

for c=1:18
    for l=1:18
        clinear(l,c)= uint8( (double(face(l,c,1))*0.2989) + (double(face(l,c,2))*0.587) + (double(face(l,c,3))*0.114) );
    end
end

for c=1:18
    for l=1:18
        cscilab(l,c)= uint8( (double(face(l,c,1))*0.114) + (double(face(l,c,2))*0.587) + (double(face(l,c,3))*0.2989) );
    end
end
subplot (2,3,1); title ('face'); imshow (face);
subplot (2,3,2); title ('cinza'); imshow (cinza);
subplot (2,3,3); title ('1canal'); imshow (umcanal);
subplot (2,3,4); title ('cmedia'); imshow(cmedia);
subplot (2,3,5); title ('clinear'); imshow(clinear);
subplot (2,3,6); title ('cscilab'); imshow(cscilab);
