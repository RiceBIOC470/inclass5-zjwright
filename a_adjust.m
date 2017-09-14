function a_adjust_function=a_adjust(img)
image=imread(img);
adjusted_image=imadjust(image,stretchlim(image),[0.01 0.99]);
figure
imshow(adjusted_image)
