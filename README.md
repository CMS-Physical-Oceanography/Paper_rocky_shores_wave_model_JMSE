# Paper_rocky_shores_wave_model_JMSE
MATLAB codes to recreate the analysis found in Acevedo Ramirez et al., 2026 (https://www.mdpi.com/2077-1312/14/7/609)

This archive contains the data sets and codes to create 3 of the essential primary results  figures in the manuscript
"Modeling wave energy dissipation by bottom friction on rocky shores" by Acevedo-Ramirez et al.

The codes and data sets are MATLAB files run on MATLAB 2022b.

1. Figure 4: Wave frequency and directional spectra characteristics versus frequency $f$ and time at the B03 buoy as observed (OBS, panels A and C) and modeled (MOD, panels B and D). Hourly $S_{\eta}$ normalized by the hourly variance at peak period $(S_{\eta})_{\mathrm{T_p}}$ from (A) observations and (B) base model Rx22. Hourly wave directional spectra $D(\theta,f)$, from (C) observations and (D) base model. The dashed red contour in each panel outlines the region encompassing 50 \% of peak period wave energy observed (panels A and C) and modeled (panels B and D).

Run code: F4_A_2Dcomparisson_v1_AS.m that loads the Wave frequency and directional spectra characteristics contained in F3_DataSet_v3.mat

2. Figure 7: Observed versus modeled significant wave height $H_s$ from all observation locations. Color indicates the hourly water depth. A. Rx22 base case SWAN simulation. B. MA88 model with SWAN default bottom friction. The dashed black line is the 1-to-1 line. Bulk statistics of model data comparison Eq. 16, are denoted in each panel.

Run code: F7_A_Disp_v1_AS.m that loads all significant wave height results in F5DataSet.mat

3. Figure 9: Model-observation $H_s$ skill metrics as a function of water depth. A. Mean Bias, B. Root mean square error, C. Willmott skill score. Model simulations compared use the default SWAN Ma88 (orange), base case Rx22 with constant roughness $k_N = 0.5$ (blue), variable $k_N$ (white), and Ro16 (red). Measurement arrays in all plots are differentiated by symbol: (circles) China Rock, (triangles) Asilomar, and (squares) the alongshore array.

Run code: F9_byDepth_v1_AS.m loads model-data comparison statistics from all simulations compared in this study and plots them as a function of water depth.
