reset
set size ratio -1               #set the canvas diplaying scale, with r=-1 the unit has the same length on both the x and y axes
set parametric                  #set parameter

scale = 1
pixelSize = 1300 * scale
widM8 = pixelSize * scale
pixelCoreLen = 1100 * scale
pixelCoreWid = 1200 * scale
lenM9 = pixelSize * scale
peripheralLen = 1200 * scale

busColumnAdapterTMRLen = 150 * scale
busColumnAdapterTMRWid = 105.4 *scale

pixelCol = 16
pixelRow = 16
p0X = pixelSize*pixelCol - pixelSize/2
p0Y = pixelSize/2

#set autoscale
#unset log
#unset label
#set xtic auto
#set ytic auto
#unset title
#set xlabel "Number of clusters"
#set ylabel "Accuracy of classifier (%)"

set term svg
set output "ETROC2_pixelLocation.svg"

set xrange [-500:(pixelSize*pixelCol*1.02)]
set yrange [-peripheralLen*1.1:(pixelSize*pixelCol*1.02)+peripheralLen]
#set xlabel "x [um]"
#set ylabel "y [um]"
set title "ETROC2 pixel location"
set style fill solid 1.00 noborder        #fill the pad 1.00 is set the opacity
#调整x轴上的标度的字符大小
set xtics rotate by 45 offset 0,0 right
#xtics显示成科学计数法 
#set format x "%s*10^{%S}"; 
#set title "cpVLADv2 pad location diagram"
set obj 1 rect from 0,-1*peripheralLen to pixelSize*pixelCol,pixelSize*pixelRow fc rgb "white" fs pattern 10 bo -0.4 behind
#set obj  rect center p0X,p0Y 	size pixelSize,pixelSize fs border rgb "red"  #fc lt 1

do for [col=0:pixelCol-1]{
do for [row=0:pixelRow-1] {
set obj rect center p0X-col*pixelSize, peripheralLen+p0Y+row*pixelSize size pixelSize, pixelSize fs border rgb "red" fc rgb "white"
}
}

do for [col=0:pixelCol-1]{
do for [row=0:pixelRow-1] {
set obj rect center p0X-col*pixelSize, peripheralLen+p0Y+row*pixelSize size pixelCoreLen, pixelCoreWid fs border rgb "blue" fc rgb "white"
}
}

#do for [row=0:pixelRow-1] {
#set label at p0X, p0Y+row*pixelSize sprintf("%d",row) rotate by 0 front center font "Helvetica,5"
#}

do for [col=0:pixelCol-1]{
do for [row=0:pixelRow-1] {
set label at p0X-col*pixelSize, peripheralLen+p0Y+row*pixelSize sprintf("%d",row+col*16) rotate by 0 front center font "Helvetica,5"
}
}

busColumnAdapterTMR_X0 = 19685.595
busColumnAdapterTMR_Y0 = 945.2

do for [col=0:pixelCol-1] {
set obj rect center busColumnAdapterTMR_X0 - col*pixelSize, busColumnAdapterTMR_Y0 size busColumnAdapterTMRLen,busColumnAdapterTMRWid fs border rgb "blue" fc rgb "blue"
}

#set object 2 polygon from 0,0 to 1000,1000 to 2000,0 fs border rgb "black" fc rgb "white"
set obj 700 polygon from 20700,1000 to 14014,1000 to 14014,850 to 14300,850 to 14300,200 to 7800,200 to 7800,850 to 8085.1,850 to 8085.1,1000 to 100,1000 to 100,1200 to 9190,1200 to 9190,850 to 9385.1,850 to 9385.1,1000 to 9190,1000 to 9190,1200 to 10490,1200 to 10490,850 to 10685,850 to 10685,1000 to 10490,1000 to 10490,1200 to 11790,1200 to 11790,850 to 11985,850 to 11985,1000 to 11790,1000 to 11790,1200 to 13090,1200 to 13090,850 to 13285,850 to 13285,1000 to 13090,1000 to 13090,1200 to 20700,1200 fs border rgb "black" fc rgb "white"# down offset 0,-1200


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