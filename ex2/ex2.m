%% run SPM
spm('PET');

%% Initialize batch
spm_jobman('initcfg');
matlabbatch = {};

%% Batch
matlabbatch{1}.spm.stats.results.spmmat = {fullfile(pwd,'/two-samplet/SPM.mat')};
matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
matlabbatch{1}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{1}.spm.stats.results.conspec.thresh = 0.001;
matlabbatch{1}.spm.stats.results.conspec.extent = 1490;
matlabbatch{1}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{1}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{1}.spm.stats.results.units = 1;
matlabbatch{1}.spm.stats.results.export{1}.ps = true;

%% Run batch
%spm_jobman('interactive',matlabbatch);
spm_jobman('run',matlabbatch);

