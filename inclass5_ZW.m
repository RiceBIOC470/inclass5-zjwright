%AW: Looks good. See comment below. 1/1.

%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
img=imread('pollen_image.jpg');
a_adjust('pollen_image.jpg');

% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. 
img=imread('pollen_image.jpg');
b_adjust('pollen_image.jpg', 0.5)

%(c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 
img=imread('pollen_image.jpg');
c_adjust('pollen_image.jpg', 0.5)

%AW: This works fine. As a matter of style, when you use the conditional to check nargin,
%only put the lines of code which differ inside the conditional. The lines that are the same
% can be outside so you can write them once instead of twice. This helps keep you code more concise.

%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 
DNA='ATCG';
x=DNA(randi(4,1,10));
disp(x);
rev_comp(x)
function inclass5_function= rev_comp(ii)
jj=length(ii);
rc_seq='';
for kk=1:jj;
    if ii(kk)=='A';
        rc_seq(kk)='T';
    elseif ii(kk)=='T';
        rc_seq(kk)='A';
    elseif ii(kk)=='G';
        rc_seq(kk)='C';
    elseif ii(kk)=='C';
        rc_seq(kk)='G';
    end
end
fliplr(rc_seq)
end
