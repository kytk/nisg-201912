% ex1_talk.m

%% page 9
A = [2 5; 3 4]
B = [12; 11]
X = inv(A)*B
A*X

%% page 11
A = [1 1 1 1 1; 2 1 -1 3 4; 5 2 3 -4 6; 2 3 4 -6 7; 3 4 2 5 1]
B = [0; 8; -3; 6; -5]
X = inv(A)*B
A*X

%% page 12
H = A
H(5,4) = 3

%% page 15
C = A(1:4,:)
D = B(1:4,:)
X = pinv(C)*D
C*X

%% page 17
E = A(:,1:4)
F = B
X = pinv(E)*F
E*X

%% page 22
S.A = A;
S.B = B;
S.X = X;

%% page 23
S

%% page 24
S.A
S.B
S.X

%% page 25
save('S.mat','S')

%% page 27
clear S
S
load S.mat
S
T = load('S.mat')
T.S

%% page 28
load ex1.mat
ex1

%% page 29
plot(ex1.age, ex1.Y, 'o')
xlabel('Age')
ylabel('Y')

%% page 30
B = pinv(ex1.X)*ex1.Y
y = ex1.X*B
hold on
plot(ex1.age,y)

%% page 31
[r p rl ru] = corrcoef(ex1.age,ex1.Y)

%% page 33
brain = imread('brain_small.png')
whos brain

%% page 35
brain = double(brain)

%% page 36
whos brain
brain = brain(:,:,1)
whos brain

%% page 37
figure
imagesc(brain)
axis equal
colormap gray
colorbar

%% page 38
mask = (brain>0)
whos mask
figure
imagesc(mask)
axis equal
colormap gray
colorbar

%% page 39
mask2 = (brain>100);
figure
imagesc(mask2)
axis equal
colormap gray
colorbar

%% page 40
close all

%% page 42
P = spm_select(1,'image')
V = spm_vol(P)
Y = spm_read_vols(V);
whos Y

%% page 43
Ymask = (Y>0.2);
Vmask = V
Vmask.fname = 'mask.nii'
Vmask.descrip = 'i>0.2'
spm_write_vol(Vmask,Ymask)

%% page 44
spm_image('Display','mask.nii')

%% page 45
help spm_image


