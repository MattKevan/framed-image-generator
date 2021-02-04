count=$1
stop=$2

while [ $count -le $stop ]
do
  wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1362,l_$3_$count,w_1090,x_0,y_0/v1612200911/portrait-frame-a-size.jpg -O $4-$count.jpg
  wget https://res.cloudinary.com/dl4abuxel/image/upload/c_crop,h_900,w_1200/v1588690105/$3_$count.png -O $4-$count-crop.jpg
  count=$(( $count +1 ))
done