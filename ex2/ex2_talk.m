% ex2_talk.m
% cheat file for ex2

%% page 6
clear all
cwd = pwd;
ex2

%% page 10
SPM

%% page 11
SPM.xY.P
SPM.xX.X

%% page 12
xSPM

%% page 14
5283 + 8486 + 7347 + 1642 + 1490

%% page 15
t = xSPM.Z(:,101:105)

%% page 16
XYZ = xSPM.XYZ(:,101:105)

%% page 17
XYZmm = xSPM.XYZmm(:,101:105)

%% page 18
[XYZ' XYZmm' t']

%% page 19
spm_image('Display','spmT_0001.nii')

%% page 21
[xyz i] = spm_XYZreg('NearestXYZ',  [-29; 0; -47],xSPM.XYZmm)

%% page 22
tvalue=xSPM.Z(:,i)

%% page 23
L = spm_atlas('list')

%% page 24
cd(spm('dir'))
cd tpm
spm_image
cd(cwd)

%% page 26
spm_atlas('select','neuromorphometrics',174)

%% page 28
spm_atlas('query','neuromorphometrics',[-29; 0; -47])

%% page 30
size(XYZmm)

%% page 32
for j=1:size(XYZmm,2)
    spm_atlas('query','neuromorphometrics',XYZmm(:,j))
end

%% page 34
region={};
for j=1:size(XYZmm,2)
    region{j,1}=spm_atlas('query','neuromorphometrics',XYZmm(:,j));
end
region

%% page 36
XYZmm = cell2mat(TabDat.dat(:,12)')
region={};
for j=1:size(XYZmm,2)
    region{j,1}=spm_atlas('query','neuromorphometrics',XYZmm(:,j));
end
region

%% page 37
T = cell2table(region)
writetable(T,'region.csv') 

%% page 39
TabDat

%% page 41
pwd
addpath ../batch
get_spm_names
get_spm_all_names


