#!/bin/sh
#' @author Bhupendra Raut
#' June 28, 2018

#wget -N http://www.imd.gov.in/section/nhac/dynamic/allindianew.pdf
#wget -N http://satellite.imd.gov.in/dynamic/satbltn.pdf

mkdir fig
cd fig

#Get all the Figures in ./fig Directory
wget -N http://imdpune.gov.in/Seasons/Pre_Monsoon/onset_SW.gif
convert onset_SW.gif onset_SW.png

wget -N http://imdpune.gov.in/Seasons/Pre_Monsoon/seasonal-rain.jpg

#wget -N http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/concwinds925.gif
#convert concwinds925.gif concwinds925.png

#wget -N http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/aod10days.gif
#convert aod10days.gif aod10days.png 

#wget -N http://www.ncmrwf.gov.in/Data/mihir/Soil-Moisture/soilm_7days.gif
#convert soilm_7days.gif soilm_7days.png 

wget -N http://imdpune.gov.in/Seasons/Pre_Monsoon/all-india.gif
convert all-india.gif all-india.png
wget -N http://imdpune.gov.in/Seasons/Pre_Monsoon/homo.gif 
convert homo.gif homo.png 

wget -N http://nwp.imd.gov.in/gefs/mslp_avg_spr-24.png

#Download Yesterday's data for todays forecast fields from NCMRWF
DATE=`date -d "yesterday 13:00" '+%Y-%m-%d'`
#wget -nc http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmax_day-1.png
#wget -nc http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmin_day-1.png
#wget -nc http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmax_tend.png
#wget -nc http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmin_tend.png


#download satellite products from IMD 
wget -nc http://satellite.imd.gov.in/img/3DRasiasec_vis.jpg
wget -nc satellite.imd.gov.in/img/3Dasiasec_ctbt.jpg
wget -nc http://satellite.imd.gov.in/img/3Dhum_prof620_a1.jpg
#wget -nc http://satellite.imd.gov.in/img/3DRasiasec_bt1.jpg
#wget -nc http://satellite.imd.gov.in/img/3Dtpw_a1.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_shear.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_shten.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_midsh.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_lowcon.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_updiv.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_updiv.jpg 
#wget -nc http://satellite.imd.gov.in/img/3Dasianew.jpg 


#wget -nc http://satellite.imd.gov.in/img/SOLAPUR.gif
#convert SOLAPUR.gif SOLAPUR.png

#IMD forecast Product
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-CAPE_06.png 
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-CIN_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-LCL_06.png 


#GFS Forecast
wget -N http://nwp.imd.gov.in/gefs/con-spr-wind_zonal850-0.png
wget -N http://nwp.imd.gov.in/gefs/con-spr-wind_zonal200-0.png

#IMD WRF forecast
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-03-RAIN_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd850_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd200_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd500_06.png

#IMD Meteogram
wget -N http://nwp.imd.gov.in/gfs/gfs_meteograms/SLP-meteogram.gif
convert SLP-meteogram.gif SLP-meteogram.png
#wget -N http://nwp.imd.gov.in/gfs/gfs_meteograms/AGD-meteogram.gif
#convert AGD-meteogram.gif AGD-meteogram.png


#Solapur WRF forecast from Gayatri
DATE=`date -d "yesterday 13:00" '+%Y%m%d'`
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/skew/Solapur.000013.png

wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/skew/Solapur.000015.png

wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/cape/cape.000015.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/cine/cine.000015.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/mdbz/mdbz.000015.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/WLD/wld.000015.png
#wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/precit/precipt.000018.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/lclh/lcl.000015.png

#wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/cape/cape.000021.png
#wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/cine/cine.000021.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/mdbz/mdbz.000017.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/WLD/wld.000017.png
#wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/precit/precipt.000020.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/lclh/lcl.000017.png
wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/qvap/MR.000017.png
#wget -N http://103.251.186.33/~caipeex/wrf/$DATE-18/lwp/lwp_iwp.000014.png

#Get Solapur data figures
cd ../fig_obs
DATE=`date -d "today 13:00" '+%Y%m%d'`
#wget -N http://103.251.186.33/~caipeex/solapur/rsonde/skewT_25062018.png
wget -N http://103.251.186.33/~caipeex/rainfall/rain-gauge_output_$DATE.pdf
rm -rv rain-gauge_output.pdf
mv -v rain-gauge_output_$DATE.pdf rain-gauge_output.pdf


cd ..

pdflatex metbrief.tex
