% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 641.718577252402160 ; 641.980881549255290 ];

%-- Principal point:
cc = [ 315.047722520136630 ; 248.036716989262800 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.003201133788511 ; 0.019885420648935 ; 0.001123108758231 ; 0.002551312812962 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 6.846350280397089 ; 5.721519928869236 ];

%-- Principal point uncertainty:
cc_error = [ 2.491578492552566 ; 6.788955272949302 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.009072267476947 ; 0.036560956183391 ; 0.000858248291150 ; 0.001379210009956 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 11;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.908378e+000 ; -1.892796e+000 ; -6.523050e-001 ];
Tc_1  = [ -3.430420e+002 ; -2.031082e+002 ; 8.385346e+002 ];
omc_error_1 = [ 4.546130e-003 ; 5.546769e-003 ; 7.886663e-003 ];
Tc_error_1  = [ 3.341961e+000 ; 9.365964e+000 ; 9.164439e+000 ];

%-- Image #2:
omc_2 = [ -1.757347e+000 ; -2.169168e+000 ; -8.421797e-001 ];
Tc_2  = [ -2.553893e+002 ; -2.341453e+002 ; 7.953638e+002 ];
omc_error_2 = [ 3.200477e-003 ; 6.322567e-003 ; 9.537808e-003 ];
Tc_error_2  = [ 3.183729e+000 ; 8.931659e+000 ; 8.639005e+000 ];

%-- Image #3:
omc_3 = [ -1.635325e+000 ; -2.327086e+000 ; -8.872762e-001 ];
Tc_3  = [ -1.783765e+002 ; -2.528544e+002 ; 8.025835e+002 ];
omc_error_3 = [ 2.540111e-003 ; 6.497356e-003 ; 1.010361e-002 ];
Tc_error_3  = [ 3.201725e+000 ; 9.028309e+000 ; 8.607305e+000 ];

%-- Image #4:
omc_4 = [ -2.004557e+000 ; -1.670824e+000 ; -4.991153e-001 ];
Tc_4  = [ -3.788724e+002 ; -1.394920e+002 ; 8.853947e+002 ];
omc_error_4 = [ 5.660404e-003 ; 5.007612e-003 ; 6.731734e-003 ];
Tc_error_4  = [ 3.491714e+000 ; 9.720863e+000 ; 9.483519e+000 ];

%-- Image #5:
omc_5 = [ -2.164771e+000 ; -1.516937e+000 ; -3.552693e-001 ];
Tc_5  = [ -3.605193e+002 ; -1.484701e+002 ; 1.097737e+003 ];
omc_error_5 = [ 6.010887e-003 ; 4.285490e-003 ; 6.304189e-003 ];
Tc_error_5  = [ 4.318959e+000 ; 1.196658e+001 ; 1.156422e+001 ];

%-- Image #6:
omc_6 = [ -2.122341e+000 ; -2.006313e+000 ; -3.996518e-001 ];
Tc_6  = [ -2.773708e+002 ; -4.602989e+001 ; 9.625481e+002 ];
omc_error_6 = [ 2.828906e-003 ; 4.053928e-003 ; 6.975072e-003 ];
Tc_error_6  = [ 3.762475e+000 ; 1.031913e+001 ; 1.025280e+001 ];

%-- Image #7:
omc_7 = [ -1.810430e+000 ; -2.218933e+000 ; -4.471387e-001 ];
Tc_7  = [ -3.168333e+002 ; -2.151414e+002 ; 1.023374e+003 ];
omc_error_7 = [ 3.202108e-003 ; 4.570741e-003 ; 7.256400e-003 ];
Tc_error_7  = [ 4.023152e+000 ; 1.135433e+001 ; 1.097577e+001 ];

%-- Image #8:
omc_8 = [ -2.440367e+000 ; -1.798653e+000 ; -2.519842e-001 ];
Tc_8  = [ -3.543415e+002 ; 4.163178e+001 ; 1.276278e+003 ];
omc_error_8 = [ 3.423964e-003 ; 3.327058e-003 ; 7.615130e-003 ];
Tc_error_8  = [ 4.998411e+000 ; 1.348710e+001 ; 1.331138e+001 ];

%-- Image #9:
omc_9 = [ -2.129747e+000 ; -2.206502e+000 ; -3.759602e-001 ];
Tc_9  = [ -3.314350e+002 ; -7.609928e+001 ; 1.219187e+003 ];
omc_error_9 = [ 2.941333e-003 ; 3.832885e-003 ; 8.318325e-003 ];
Tc_error_9  = [ 4.765573e+000 ; 1.311073e+001 ; 1.251587e+001 ];

%-- Image #10:
omc_10 = [ -1.279745e+000 ; -2.558166e+000 ; -9.818639e-001 ];
Tc_10  = [ 9.103202e+001 ; -3.539952e+002 ; 1.082960e+003 ];
omc_error_10 = [ 2.053110e-003 ; 6.844887e-003 ; 1.071481e-002 ];
Tc_error_10  = [ 4.281482e+000 ; 1.224865e+001 ; 1.175541e+001 ];

%-- Image #11:
omc_11 = [ -2.052687e+000 ; -1.679405e+000 ; -5.670845e-001 ];
Tc_11  = [ -3.466209e+002 ; -1.028668e+002 ; 8.222906e+002 ];
omc_error_11 = [ 5.209637e-003 ; 5.176145e-003 ; 7.160977e-003 ];
Tc_error_11  = [ 3.245131e+000 ; 8.959558e+000 ; 8.950007e+000 ];

