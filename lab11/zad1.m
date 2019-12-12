close all; clearvars; clc;

i1 = imread('ccl1.png');

figure;
imshow(i1)

[YY, XX] = size(i1);
L = 1;
id = 1:100;


for y = 2:(YY-1)
    for x = 2:(XX-1)
        if i1(y, x) ~= 0
           sasiedzi = [i1(y-1,x-1) i1(y-1,x) i1(y-1,x+1) i1(y,x-1)];
           suma = sum(sasiedzi);
           if suma == 0
               i1(y, x) = L;
               L = L + 1;
           elseif suma > 0
               sasiedzi_ = nonzeros(sasiedzi);
               min_ = min(sasiedzi_);
               max_ = max(sasiedzi_);
               
               if min_ == max_
                   i1(y, x) = min_;
               else
                   i1(y, x) = min_;
                   minsasiedzi = sasiedzi_(sasiedzi_ ~= min_);
                   minsasiedzi_ = min(minsasiedzi);
                   id = union(min_, minsasiedzi_, id);
               end
           end
        end
    end
end

figure;
imshow(label2rgb(i1))

i1_ = i1;

 for i = 1:100
    lut(i) = root(i, id);
end

for y = 2:(YY-1)
    for x = 2:(XX-1)
       if (i1_(y,x) > 0)
         i1_(y,x) = lut(i1(y,x));
       end
    end
end

figure;
imshow(label2rgb(i1_))
 