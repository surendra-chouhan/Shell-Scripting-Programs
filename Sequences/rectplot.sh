#!/bin/bash -x

length=60;
width=40;

conversionmultiplier=0.0929;

sqft_area_plot=$(($length*$width));

echo - | awk '{print  "%.2f\n", '$sqft_area_plot*$conversionmultiplier'}'

