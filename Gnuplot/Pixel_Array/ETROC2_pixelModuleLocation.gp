reset
set size ratio -1               #set the canvas diplaying scale, with r=-1 the unit has the same length on both the x and y axes
set parametric                  #set parameter

scale = 1
pixelSize = 1300 * scale
pixelCoreLen = 1100 * scale
pixelCoreWid = 1200 * scale

originX_pixelI2C = 50
originY_pixelI2C = 30
len_pixelI2C = 270
wid_pixelI2C = 349.5

originX_pixelAMP = 149.555
originY_pixelAMP = 473.695
len_pixelAMP = 57.305
wid_pixelAMP = 116.575

originX_pixelQINJ = 273.44
originY_pixelQINJ = 469.88
len_pixelQINJ = 101.56
wid_pixelQINJ = 141.78

originX_pixelDAC = 109.56
originY_pixelDAC = 595.76
len_pixelDAC = 110.19
wid_pixelDAC = 270.495

originX_pixelPA = 284.395
originY_pixelPA = 638.735
len_pixelPA = 89.87
wid_pixelPA = 93.755

originX_pixelPAbias = 313.165
originY_pixelPAbias = 742.45
len_pixelPAbias = 33.2
wid_pixelPAbias = 18.72

originX_pixelDISC = 285.87
originY_pixelDISC = 903.265
len_pixelDISC = 82
wid_pixelDISC = 66.63

originX_pixelPADesd = 561.255
originY_pixelPADesd = 629.48
len_pixelPADesd = 22.69
wid_pixelPADesd = 50

originX_pixelTDC = 446.005
originY_pixelTDC = 777.355
len_pixelTDC = 473.22
wid_pixelTDC = 473.155

originX_pixelTHctrl = 182.25
originY_pixelTHctrl = 1050
len_pixelTHctrl = 190
wid_pixelTHctrl = 200



#set autoscale
#unset log
#unset label
#set xtic auto
#set ytic auto
#unset title
#set xlabel "Number of clusters"
#set ylabel "Accuracy of classifier (%)"

set term svg
set output "ETROC2_pixelModuleLocation.svg"

set xrange [-500:(pixelSize*1.1)]
set yrange [-500:(pixelSize*1.1)]
#set xlabel "x [um]"
#set ylabel "y [um]"
set title "ETROC2 pixel module location"
set style fill solid 1.00 noborder        #fill the pad 1.00 is set the opacity
#调整x轴上的标度的字符大小
set xtics rotate by 45 offset 0,0 right
#xtics显示成科学计数法 
#set format x "%s*10^{%S}"; 
#set title "cpVLADv2 pad location diagram"
set obj 1 rect from 0,0 to pixelSize,pixelSize fc rgb "white" fs pattern 10 bo -0.4 behind
set obj 2 polygon from 476.390,593 to 523.610,593 to 557,626.390 to 557,673.61 to 523.610,707 to 476.390,707 to 443,673.610 to 443,626.390 fs border rgb "black" fc rgb "white"
set obj 3 polygon from 500,50 to 1200,50 to 1200,1250 to 950,1250 to 950,746 to 640,746 to 640,515.3 to 500,515.3 fs border rgb "black" fc rgb "white" 
set obj 4 rect from originX_pixelI2C,originY_pixelI2C to originX_pixelI2C+len_pixelI2C,originY_pixelI2C+wid_pixelI2C fs border rgb "black" fc rgb "white"
set obj 5 rect from originX_pixelAMP,originY_pixelAMP to originX_pixelAMP+len_pixelAMP,originY_pixelAMP+wid_pixelAMP fs border rgb "black" fc rgb "white"
set obj 6 rect from originX_pixelQINJ,originY_pixelQINJ to originX_pixelQINJ+len_pixelQINJ,originY_pixelQINJ+wid_pixelQINJ fs border rgb "black" fc rgb "white"
set obj 7 rect from originX_pixelDAC,originY_pixelDAC to originX_pixelDAC+len_pixelDAC,originY_pixelDAC+wid_pixelDAC fs border rgb "black" fc rgb "white"
set obj 8 rect from originX_pixelPA,originY_pixelPA to originX_pixelPA+len_pixelPA,originY_pixelPA+wid_pixelPA fs border rgb "black" fc rgb "white"
set obj 9 rect from originX_pixelPAbias,originY_pixelPAbias to originX_pixelPAbias+len_pixelPAbias,originY_pixelPAbias+wid_pixelPAbias fs border rgb "black" fc rgb "white"
set obj 10 rect from originX_pixelDISC,originY_pixelDISC to originX_pixelDISC+len_pixelDISC,originY_pixelDISC+wid_pixelDISC fs border rgb "black" fc rgb "white"
set obj 11 rect from originX_pixelPADesd,originY_pixelPADesd to originX_pixelPADesd+len_pixelPADesd,originY_pixelPADesd+wid_pixelPADesd fs border rgb "black" fc rgb "white"
set obj 12 rect from originX_pixelTDC,originY_pixelTDC to originX_pixelTDC+len_pixelTDC,originY_pixelTDC+wid_pixelTDC fs border rgb "black" fc rgb "white"
set obj 13 rect from originX_pixelTHctrl,originY_pixelTHctrl to originX_pixelTHctrl+len_pixelTHctrl,originY_pixelTHctrl+wid_pixelTHctrl fs border rgb "black" fc rgb "white"

set label 1 at 500,650 "PAD" rotate by 0 front center font "Helvetica,6"
set label 2 at 900,400 "Pixel Readout" rotate by 0 front center font "Helvetica,6"
set label 3 at originX_pixelI2C+len_pixelI2C/2,originY_pixelI2C+wid_pixelI2C/2 "I2C" rotate by 0 front center font "Helvetica,6"
set label 4 at originX_pixelAMP+len_pixelAMP/2,originY_pixelAMP+wid_pixelAMP/2 "AMP" rotate by 90 front center font "Helvetica,6"
set label 5 at originX_pixelQINJ+len_pixelQINJ/2,originY_pixelQINJ+wid_pixelQINJ/2 "QInj" rotate by 0 front center font "Helvetica,6"
set label 6 at originX_pixelDAC+len_pixelDAC/2,originY_pixelDAC+wid_pixelDAC/2 "DAC" rotate by 0 front center font "Helvetica,6"
set label 7 at originX_pixelPA+len_pixelPA/2,originY_pixelPA+wid_pixelPA/2 "PA" rotate by 0 front center font "Helvetica,6"
set label 8 at originX_pixelPAbias+len_pixelPAbias/2,originY_pixelPAbias+wid_pixelPAbias/2+25 "PA BIAS" rotate by 0 front center font "Helvetica,5"
set label 9 at originX_pixelDISC+len_pixelDISC/2,originY_pixelDISC+wid_pixelDISC/2 "DISC" rotate by 0 front center font "Helvetica,6"
set label 10 at originX_pixelPADesd+len_pixelPADesd/2+22,originY_pixelPADesd+wid_pixelPADesd/2 "PAD ESD" rotate by 90 front center font "Helvetica,5"
set label 11 at originX_pixelTDC+len_pixelTDC/2,originY_pixelTDC+wid_pixelTDC/2 "TDC" rotate by 0 front center font "Helvetica,6"
set label 12 at originX_pixelTHctrl+len_pixelTHctrl/2,originY_pixelTHctrl+wid_pixelTHctrl/2 "TH control" rotate by 0 front center font "Helvetica,6"


#set object 2 polygon from 0,0 to 1000,1000 to 2000,0 fs border rgb "black" fc rgb "white"
#set obj 700 polygon from 20700,1000 to 14014,1000 to 14014,850 to 14300,850 to 14300,200 to 7800,200 to 7800,850 to 8085.1,850 to 8085.1,1000 to 100,1000 to 100,1200 to 9190,1200 to 9190,850 to 9385.1,850 to 9385.1,1000 to 9190,1000 to 9190,1200 to 10490,1200 to 10490,850 to 10685,850 to 10685,1000 to 10490,1000 to 10490,1200 to 11790,1200 to 11790,850 to 11985,850 to 11985,1000 to 11790,1000 to 11790,1200 to 13090,1200 to 13090,850 to 13285,850 to 13285,1000 to 13090,1000 to 13090,1200 to 20700,1200 fs border rgb "black" fc rgb "white"# down offset 0,-1200


#set obj 30 rect at 1835/2,1635/2 size char strlen("cpVLAD"), char 1 
#set obj 30 fillstyle empty border -1 front 
#set label 30 at 1835/2,1635/2 "cpVLAD" front center

#set label 2   at 0,M1/2 							  	"M1"      rotate by 0 front center font "Helvetica,5"


#set arrow from 0,-500 to 1835,-500 heads front lc rgb "black"
#set label 44 at 1835/2,-560 "1835um" rotate by 0 front center font "Helvetica,7"


unset tics
#set tics scale 3
#set mxtics 4
#set mytics 4
#unset border

set border 0
#unset xtics
#unset ytics
unset key

#plot 'GST-I.dat' u 1:2:(($1)*0+Pin_x/2):(($2)*0+Pin_y/2) with boxxy fillstyle solid lc rgb "black" t'', 'GST-I.dat' u 3:4:(($3)*0+Pin_x1/2):(($4)*0+Pin_y1/2) with boxxy fillstyle solid lc rgb "black" t''
plot for [i=0:5] "TEST2.txt" lc "white" #index i with linespoints lw 1 dashtype 8 lc 'black' title ''