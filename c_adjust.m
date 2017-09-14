function c_adjust_function=c_adjust(img, x)
if nargin==2
image=imread(img);
adjusted_image_c=imadjust(image,stretchlim(image),[(x) (1-x)]);
figure
imshow(adjusted_image_c)
elseif nargin==1
image=imread(img);
adjusted_image_c=imadjust(image,stretchlim(image),[0.01 0.99]);
figure
imshow(adjusted_image_c)
end
end