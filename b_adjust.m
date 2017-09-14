function b_adjust_function=b_adjust(img, x)
image=imread(img);
adjusted_image_b=imadjust(image,stretchlim(image),[(x) (1-x)]);
figure
imshow(adjusted_image_b)
