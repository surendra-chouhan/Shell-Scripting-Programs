#!/bin/bash -x

one_sqmt_plot=222.96;

conversionmultiplier=0.00024711;
no_of_plot=25

echo - | awk '{printf "%.2f\n", '$one_sqmt_plot*$no_of_plot*$conversionmultiplier'}'
