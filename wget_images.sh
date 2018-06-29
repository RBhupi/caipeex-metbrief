#!/bin/sh
#' @author Bhupendra Raut
#' June 28, 2018

mkdir fig
cd fig

wget -nc http://imdpune.gov.in/Seasons/Pre_Monsoon/onset_SW.gif
convert onset_SW.gif onset_SW.png

wget -nc http://imdpune.gov.in/Seasons/Pre_Monsoon/seasonal-rain.jpg

wget -nc http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/concwinds925.gif
convert concwinds925.gif concwinds925.png

wget -nc http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/aod10days.gif
convert aod10days.gif aod10days.png 

wget -nc http://www.ncmrwf.gov.in/Data/mihir/Soil-Moisture/soilm_7days.gif
convert soilm_7days.gif soilm_7days.png 

wget -nc http://imdpune.gov.in/Seasons/Pre_Monsoon/all-india.gif
convert all-india.gif all-india.png
wget -nc http://imdpune.gov.in/Seasons/Pre_Monsoon/homo.gif 
convert homo.gif homo.png 

#Download Yesterday's data for todays forecast fields from NCMRWF
DATE=`date -d "yesterday 13:00" '+%Y-%m-%d'`
wget -nc http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmax_day-1.png
wget -nc http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmin_day-1.png
wget -nc http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmax_tend.png
wget -nc http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmin_tend.png


#download satellite products from IMD 
wget -nc satellite.imd.gov.in/img/3Dasiasec_vis.jpg
wget -nc satellite.imd.gov.in/img/3Dasiasec_ctbt.jpg
wget -nc http://satellite.imd.gov.in/img/3Dtpw_a1.jpg 
wget -nc http://satellite.imd.gov.in/img/3D_shear.jpg 
wget -nc http://satellite.imd.gov.in/img/3D_shten.jpg 
wget -nc http://satellite.imd.gov.in/img/3D_midsh.jpg 
wget -nc http://satellite.imd.gov.in/img/3D_lowcon.jpg 
wget -nc http://satellite.imd.gov.in/img/3D_updiv.jpg 
#wget -nc http://satellite.imd.gov.in/img/3D_updiv.jpg 
#wget -nc http://satellite.imd.gov.in/img/3Dasianew.jpg 
wget -nc http://satellite.imd.gov.in/dynamic/satbltn.pdf 

wget -nc http://satellite.imd.gov.in/img/SOLAPUR.gif
convert SOLAPUR.gif SOLAPUR.png

#IMD forecast Product
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-CAPE_06.png 
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-CIN_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd01-LCL_06.png 


#GFS Forecast
wget -nc http://nwp.imd.gov.in/gefs/con-spr-wind_zonal850-0.png
wget -nc http://nwp.imd.gov.in/gefs/con-spr-wind_zonal200-0.png

#IMD WRF forecast
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-03-RAIN_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd850_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd200_06.png
wget -nc http://nwp.imd.gov.in/wrf/WRFd02-ZWd500_06.png

cd ..

pdflatex metbrief.tex
