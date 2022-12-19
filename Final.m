b = imread('cameraman.tif')
a = b
b2 = imdivide(b, 64);
bb2 = immultiply(b2, 64);
subplot(331), imshow(b); title("original")
subplot(332), imshow(bb2); title("64")

c2 = imdivide(b, 32);
cc2 = immultiply(c2, 32);
subplot(333), imshow(cc2); title("32")

d2 = imdivide(b, 16);
dd2 = immultiply(d2, 16);
subplot(334), imshow(dd2); title("16")

% a) When you divide by any number the remainder is lost and number is
% rounded. When you multiply back the original and multiplied number will not
% match.
% 2. It is possible to make picture clear after blurring by sharpening
f1 = fspecial("unsharp");
cf1 = filter2(f1, b);

subplot(335), imshow(cf1); title("average filtered")

a = imsharpen(cf1);
subplot(336), imshow(a); title("sharpened")

x = [12, 6, 5, 13, 14, 14, 16, 15;
    11, 10, 8, 5, 8, 1, 14, 14;
    9, 8, 3, 4, 7, 12, 18, 19;
    10, 7, 4, 2, 10, 12, 13, 17;
    16, 9, 13, 13, 16, 19, 19, 17;
    12, 10, 14, 15, 18, 18, 16, 14;
    11, 8, 10, 12, 14, 13, 14, 15;
    8, 6, 3, 7, 9, 11, 12, 12;]

subplot(337), imhist(x);
