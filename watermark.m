function Iw = watermark(O,W)  % O for original image and W for watermark image
% Both image must have the same size

[M,N] = size(O);                                   % getting the size of the original image
I=rgb2gray(O);                                      % converting rgb image to gray image
W_BW = im2bw(W);         % converting the watermark  image to be in (0&1) bits     
Iw = bitset (I,1,W_BW);                   % Now we replace the lowest bit in the original image using bitset function 
  %%%%%%%%%%%%%%%%%  
figure,imshow(O),title('Original Image')
figure,imshow(W),title('Watermark Image')
figure,imshow(Iw),title('Result')
