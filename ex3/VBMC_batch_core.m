matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/home/foo/img_data/nisg-201912/ex3'};
matlabbatch{2}.spm.spatial.preproc.channel.vols = {'/home/foo/img_data/nisg-201912/ex3/data/V_subj1.nii,1'};
matlabbatch{2}.spm.spatial.preproc.channel.biasreg = 0.001;
matlabbatch{2}.spm.spatial.preproc.channel.biasfwhm = 60;
matlabbatch{2}.spm.spatial.preproc.channel.write = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(1).tpm = {'/home/foo/spm12/tpm/TPM.nii,1'};
matlabbatch{2}.spm.spatial.preproc.tissue(1).ngaus = 1;
matlabbatch{2}.spm.spatial.preproc.tissue(1).native = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(1).warped = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(2).tpm = {'/home/foo/spm12/tpm/TPM.nii,2'};
matlabbatch{2}.spm.spatial.preproc.tissue(2).ngaus = 1;
matlabbatch{2}.spm.spatial.preproc.tissue(2).native = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(2).warped = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(3).tpm = {'/home/foo/spm12/tpm/TPM.nii,3'};
matlabbatch{2}.spm.spatial.preproc.tissue(3).ngaus = 2;
matlabbatch{2}.spm.spatial.preproc.tissue(3).native = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(3).warped = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(4).tpm = {'/home/foo/spm12/tpm/TPM.nii,4'};
matlabbatch{2}.spm.spatial.preproc.tissue(4).ngaus = 3;
matlabbatch{2}.spm.spatial.preproc.tissue(4).native = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(4).warped = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(5).tpm = {'/home/foo/spm12/tpm/TPM.nii,5'};
matlabbatch{2}.spm.spatial.preproc.tissue(5).ngaus = 4;
matlabbatch{2}.spm.spatial.preproc.tissue(5).native = [1 0];
matlabbatch{2}.spm.spatial.preproc.tissue(5).warped = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(6).tpm = {'/home/foo/spm12/tpm/TPM.nii,6'};
matlabbatch{2}.spm.spatial.preproc.tissue(6).ngaus = 2;
matlabbatch{2}.spm.spatial.preproc.tissue(6).native = [0 0];
matlabbatch{2}.spm.spatial.preproc.tissue(6).warped = [0 0];
matlabbatch{2}.spm.spatial.preproc.warp.mrf = 1;
matlabbatch{2}.spm.spatial.preproc.warp.cleanup = 1;
matlabbatch{2}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{2}.spm.spatial.preproc.warp.affreg = 'mni';
matlabbatch{2}.spm.spatial.preproc.warp.fwhm = 0;
matlabbatch{2}.spm.spatial.preproc.warp.samp = 3;
matlabbatch{2}.spm.spatial.preproc.warp.write = [0 0];
matlabbatch{3}.spm.spatial.smooth.data(1) = cfg_dep('Segment: wc1 Images', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','tiss', '()',{1}, '.','wc', '()',{':'}));
matlabbatch{3}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{3}.spm.spatial.smooth.dtype = 0;
matlabbatch{3}.spm.spatial.smooth.im = 0;
matlabbatch{3}.spm.spatial.smooth.prefix = 's';
matlabbatch{4}.spm.stats.factorial_design.dir = {'/home/foo/img_data/nisg-201912/ex3/stats/V_subj1'};
%%
matlabbatch{4}.spm.stats.factorial_design.des.t2.scans1 = {
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040013.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040014.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040017.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040018.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040019.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040020.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040023.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040024.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040026.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040027.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040030.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040031.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040033.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040035.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040036.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040038.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040043.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040045.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040048.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040050.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040051.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040052.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040053.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040054.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040055.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040056.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040057.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040058.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040061.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040063.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040065.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040066.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040067.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040068.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040069.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040076.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040086.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040087.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040090.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040091.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040093.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040095.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040102.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040104.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040107.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040111.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040113.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040114.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040115.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040116.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040119.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040120.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040121.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040123.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040124.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040125.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040127.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040128.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040129.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040130.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040131.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040134.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040135.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040136.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040138.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040139.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040140.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040141.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040144.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040146.nii,1'
                                                           '/home/foo/img_data/nisg-201912/ex3/NDB/swc1V_0040147.nii,1'
                                                           };
%%
matlabbatch{4}.spm.stats.factorial_design.des.t2.scans2(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{4}.spm.stats.factorial_design.des.t2.dept = 0;
matlabbatch{4}.spm.stats.factorial_design.des.t2.variance = 0;
matlabbatch{4}.spm.stats.factorial_design.des.t2.gmsca = 0;
matlabbatch{4}.spm.stats.factorial_design.des.t2.ancova = 0;
matlabbatch{4}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{4}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{4}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{4}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{4}.spm.stats.factorial_design.masking.em = {'/home/foo/img_data/nisg-201912/ex3/mask/mask.nii,1'};
matlabbatch{4}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{4}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{4}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{5}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{5}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{5}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{6}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{6}.spm.stats.con.consess{1}.tcon.name = 'NDB > Subj1';
matlabbatch{6}.spm.stats.con.consess{1}.tcon.weights = [1 -1];
matlabbatch{6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.delete = 1;
matlabbatch{7}.spm.stats.results.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{7}.spm.stats.results.conspec.titlestr = 'Decreased regions of Subj1';
matlabbatch{7}.spm.stats.results.conspec.contrasts = 1;
matlabbatch{7}.spm.stats.results.conspec.threshdesc = 'none';
matlabbatch{7}.spm.stats.results.conspec.thresh = 0.05;
matlabbatch{7}.spm.stats.results.conspec.extent = 400;
matlabbatch{7}.spm.stats.results.conspec.conjunction = 1;
matlabbatch{7}.spm.stats.results.conspec.mask.none = 1;
matlabbatch{7}.spm.stats.results.units = 1;
matlabbatch{7}.spm.stats.results.export{1}.pdf = true;
matlabbatch{7}.spm.stats.results.export{2}.png = true;
matlabbatch{8}.spm.util.render.display.rendfile = {'/home/foo/spm12/rend/render_spm96.mat'};
matlabbatch{8}.spm.util.render.display.conspec.spmmat(1) = cfg_dep('Contrast Manager: SPM.mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{8}.spm.util.render.display.conspec.contrasts = 1;
matlabbatch{8}.spm.util.render.display.conspec.threshdesc = 'none';
matlabbatch{8}.spm.util.render.display.conspec.thresh = 0.05;
matlabbatch{8}.spm.util.render.display.conspec.extent = 400;
matlabbatch{8}.spm.util.render.display.conspec.mask = struct('contrasts', {}, 'thresh', {}, 'mtype', {});
matlabbatch{9}.spm.util.print.fname = '';
matlabbatch{9}.spm.util.print.fig.figname = 'Graphics';
matlabbatch{9}.spm.util.print.opts = 'png';
