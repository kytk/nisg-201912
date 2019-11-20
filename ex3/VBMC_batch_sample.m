%% VBMC_batch.m
% Batch to visualize individual decreased region compared to NDB
% 
% Kiyotaka Nemoto 19/Nov/2019


%% Run SPM
spm('pet')
%spm('fmri')


%% Prepare the SPM window
%spm('CreateMenuWin','on'); %top-left window (Menu)
%spm('CreateIntWin','on');  %bottom-left window (Interactive)
%spm_figure('Create','Graphics','Graphics','on'); %right window (Graphics)


%% Initialize batch
spm_jobman('initcfg');
matlabbatch = {};


%% Select Image files
subj = spm_select(Inf,'image','Select subject image(s)...',{},pwd,'.*',1);
ndb = spm_select(Inf,'image','Select NDB...',{},pwd,'.*',1);


%% Select directory
cwd = spm_select(1,'dir','Select working directory...');


%% for loop
for i = 1:size(subj,1)
    j = 9*i-9;

    %% make a stat directory for each subject
    [dir fname ext] = spm_fileparts(subj(i,:));
    subjstat = fullfile(cwd,'stats',fname);
    mkdir(subjstat);
    
    %% Set Contrast name
    conname = ['NDB > ' fname];

    
    matlabbatch{j+1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {cwd};
    matlabbatch{j+2}.spm.spatial.preproc.channel.vols = {deblank(subj(i,:))};
    matlabbatch{j+2}.spm.spatial.preproc.channel.biasreg = 0.001;
    matlabbatch{j+2}.spm.spatial.preproc.channel.biasfwhm = 60;
    matlabbatch{j+2}.spm.spatial.preproc.channel.write = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(1).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,1')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(1).ngaus = 1;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(1).native = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(1).warped = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(2).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,2')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(2).ngaus = 1;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(2).native = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(2).warped = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(3).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,3')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(3).ngaus = 2;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(3).native = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(3).warped = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(4).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,4')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(4).ngaus = 3;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(4).native = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(4).warped = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(5).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,5')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(5).ngaus = 4;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(5).native = [1 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(5).warped = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(6).tpm = {fullfile(spm('dir'),'tpm','TPM.nii,6')};
    matlabbatch{j+2}.spm.spatial.preproc.tissue(6).ngaus = 2;
    matlabbatch{j+2}.spm.spatial.preproc.tissue(6).native = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.tissue(6).warped = [0 0];
    matlabbatch{j+2}.spm.spatial.preproc.warp.mrf = 1;
    matlabbatch{j+2}.spm.spatial.preproc.warp.cleanup = 1;
    matlabbatch{j+2}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
    matlabbatch{j+2}.spm.spatial.preproc.warp.affreg = 'mni';
    matlabbatch{j+2}.spm.spatial.preproc.warp.fwhm = 0;
    matlabbatch{j+2}.spm.spatial.preproc.warp.samp = 3;
    matlabbatch{j+2}.spm.spatial.preproc.warp.write = [0 0];
    matlabbatch{j+3}.spm.spatial.smooth.data(1) = cfg_dep('Segment: wc1 Images', substruct('.','val', '{}',{j+2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','tiss', '()',{1}, '.','wc', '()',{':'}));
    matlabbatch{j+3}.spm.spatial.smooth.fwhm = [8 8 8];
    matlabbatch{j+3}.spm.spatial.smooth.dtype = 0;
    matlabbatch{j+3}.spm.spatial.smooth.im = 0;
    matlabbatch{j+3}.spm.spatial.smooth.prefix = 's';
    matlabbatch{j+4}.spm.stats.factorial_design.dir = {subjstat};
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.scans1 = cellstr(ndb);
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.scans2(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{j+3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.dept = 0;
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.variance = 0;
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.gmsca = 0;
    matlabbatch{j+4}.spm.stats.factorial_design.des.t2.ancova = 0;
    matlabbatch{j+4}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
    matlabbatch{j+4}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
    matlabbatch{j+4}.spm.stats.factorial_design.masking.tm.tm_none = 1;
    matlabbatch{j+4}.spm.stats.factorial_design.masking.im = 1;
    matlabbatch{j+4}.spm.stats.factorial_design.masking.em = {fullfile(cwd,'mask','mask.nii,1')};
    matlabbatch{j+4}.spm.stats.factorial_design.globalc.g_omit = 1;
    matlabbatch{j+4}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
    matlabbatch{j+4}.spm.stats.factorial_design.globalm.glonorm = 1;
    matlabbatch{j+5}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{j+4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{j+5}.spm.stats.fmri_est.write_residuals = 0;
    matlabbatch{j+5}.spm.stats.fmri_est.method.Classical = 1;
    matlabbatch{j+6}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{j+5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{j+6}.spm.stats.con.consess{1}.tcon.name = conname;
    matlabbatch{j+6}.spm.stats.con.consess{1}.tcon.weights = [1 -1];
    matlabbatch{j+6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
    matlabbatch{j+6}.spm.stats.con.delete = 1;
    matlabbatch{j+7}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{j+6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{j+7}.spm.stats.results.conspec.titlestr = conname;
    matlabbatch{j+7}.spm.stats.results.conspec.contrasts = 1;
    matlabbatch{j+7}.spm.stats.results.conspec.threshdesc = 'none';
    matlabbatch{j+7}.spm.stats.results.conspec.thresh = 0.05;
    matlabbatch{j+7}.spm.stats.results.conspec.extent = 400;
    matlabbatch{j+7}.spm.stats.results.conspec.conjunction = 1;
    matlabbatch{j+7}.spm.stats.results.conspec.mask.none = 1;
    matlabbatch{j+7}.spm.stats.results.units = 1;
    matlabbatch{j+7}.spm.stats.results.export{1}.pdf = true;
    matlabbatch{j+7}.spm.stats.results.export{2}.png = true;
    matlabbatch{j+8}.spm.util.render.display.rendfile = {fullfile(spm('dir'),'rend','render_spm96.mat')};
    matlabbatch{j+8}.spm.util.render.display.conspec.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{j+5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{j+8}.spm.util.render.display.conspec.contrasts = 1;
    matlabbatch{j+8}.spm.util.render.display.conspec.threshdesc = 'none';
    matlabbatch{j+8}.spm.util.render.display.conspec.thresh = 0.05;
    matlabbatch{j+8}.spm.util.render.display.conspec.extent = 400;
    matlabbatch{j+8}.spm.util.render.display.conspec.mask = struct('contrasts', {}, 'thresh', {}, 'mtype', {});
    matlabbatch{j+9}.spm.util.print.fname = '';
    matlabbatch{j+9}.spm.util.print.fig.figname = 'Graphics';
    matlabbatch{j+9}.spm.util.print.opts = 'png';


end


%% Run batch
spm_jobman('interactive',matlabbatch);
%spm_jobman('run',matlabbatch);


