#!/bin/sh
#' @author Bhupendra Raut
#' June 28, 2018

curl -O http://www.imd.gov.in/section/nhac/dynamic/allindianew.pdf
curl -O http://satellite.imd.gov.in/dynamic/satbltn.pdf

mkdir fig
cd fig

#Get all the Figures in ./fig Directory
#curl -O http://imdpune.gov.in/Seasons/Pre_Monsoon/onset_SW.gif
#convert onset_SW.gif onset_SW.png

curl -O http://imdpune.gov.in/Seasons/Pre_Monsoon/seasonal-rain.jpg

curl -O http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/concwinds925.gif
convert concwinds925.gif concwinds925.png

curl -O http://www.ncmrwf.gov.in/Data/mihir/Dust-Forecast/aod10days.gif
convert aod10days.gif aod10days.png 

#curl -O http://www.ncmrwf.gov.in/Data/mihir/Soil-Moisture/soilm_7days.gif
#convert soilm_7days.gif soilm_7days.png 

curl -O http://imdpune.gov.in/Seasons/Pre_Monsoon/all-india.gif
convert all-india.gif all-india.png
curl -O http://imdpune.gov.in/Seasons/Pre_Monsoon/homo.gif 
convert homo.gif homo.png 

curl -O http://nwp.imd.gov.in/gefs/mslp_avg_spr-24.png

#Download Yesterday's data for todays forecast fields from NCMRWF
DATE=$(date -v -1d '+%Y%m%d')
#curl -O http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmax_day-1.png
#curl -O http://www.ncmrwf.gov.in/Data/mihir/$DATE/NCUM-Outputs/Temperature/ncum_fcst_Tmin_day-1.png
#curl -O http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmax_tend.png
#curl -O http://www.ncmrwf.gov.in/Data/mihir/Temp-Tendency/ncum_fcst_Tmin_tend.png


#download satellite products from IMD 
curl -O http://satellite.imd.gov.in/img/3DRasiasec_vis.jpg
curl -O satellite.imd.gov.in/img/3Dasiasec_ctbt.jpg
curl -O http://satellite.imd.gov.in/img/3Dhum_prof620_a1.jpg
#curl -O http://satellite.imd.gov.in/img/3DRasiasec_bt1.jpg
#curl -O http://satellite.imd.gov.in/img/3Dtpw_a1.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_shear.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_shten.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_midsh.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_lowcon.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_updiv.jpg 
#curl -O http://satellite.imd.gov.in/img/3D_updiv.jpg 
#curl -O http://satellite.imd.gov.in/img/3Dasianew.jpg 


#curl -O http://satellite.imd.gov.in/img/SOLAPUR.gif
#convert SOLAPUR.gif SOLAPUR.png

#IMD forecast Product
curl -O http://nwp.imd.gov.in/wrf/WRFd01-CAPE_06.png 
curl -O http://nwp.imd.gov.in/wrf/WRFd01-CIN_06.png
curl -O http://nwp.imd.gov.in/wrf/WRFd01-LCL_06.png 


#GFS Forecast
#curl -O http://nwp.imd.gov.in/gefs/con-spr-wind_zonal850-0.png
#curl -O http://nwp.imd.gov.in/gefs/con-spr-wind_zonal200-0.png

#IMD WRF forecast
#curl -O http://nwp.imd.gov.in/wrf/WRFd02-03-RAIN_06.png
curl -O http://nwp.imd.gov.in/wrf/WRFd02-ZWd850_06.png
curl -O http://nwp.imd.gov.in/wrf/WRFd02-ZWd200_06.png
#curl -O http://nwp.imd.gov.in/wrf/WRFd02-ZWd500_06.png

#IMD Meteogram
curl -O http://nwp.imd.gov.in/gfs/gfs_meteograms/SLP-meteogram.gif
convert SLP-meteogram.gif SLP-meteogram.png
curl -O http://nwp.imd.gov.in/gfs/gfs_meteograms/AGD-meteogram.gif
convert AGD-meteogram.gif AGD-meteogram.png


#Solapur WRF forecast from Gayatri
DATE=$(date -v -1d '+%Y%m%d')
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/skew/Solapur.000016.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/skew/Aurangabad.000016.png

curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/skew/Solapur.000018.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/skew/Aurangabad.000018.png

curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/cape/cape.000019.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/cine/cine.000019.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/mdbz/mdbz.000019.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/WLD/wld.000019.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/precit/precipt.000018.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/lclh/lcl.000019.png

curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/cape/cape.000021.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/cine/cine.000021.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/mdbz/mdbz.000021.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/WLD/wld.000021.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/precit/precipt.000020.png
curl -O http://103.251.186.33/~caipeex/wrf/$DATE-12/d3/lclh/lcl.000021.png

#Get Solapur data figures 



cd ..

pdflatex metbrief.tex
