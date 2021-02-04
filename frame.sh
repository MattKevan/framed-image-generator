shape=$1
count=$2
stop=$3

while [ $count -le $stop ]
do
	if [ $shape == "l" ]
		then
  			wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1090,l_$4_$count,w_1362,x_0,y_0/v1612200911/landscape-frame.jpg -O $5-$count.jpg
	elif [ $shape == "p" ]
		then
			wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1362,l_$4_$count,w_1090,x_0,y_0/v1612200911/portrait-frame.jpg -O $5-$count.jpg
	elif [ $shape == "s" ]
		then
			wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1342,l_$4_$count,w_1342,x_0,y_0/v1612200911/square-frame.jpg -O $5-$count.jpg
	elif [ $shape == "pa" ]
		then
		 	wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1362,l_$4_$count,w_1090,x_0,y_0/v1612200911/portrait-frame-a-size.jpg -O $5-$count.jpg
	elif [ $shape == "la" ]
		then
  			wget https://res.cloudinary.com/dl4abuxel/image/upload/c_scale,e_multiply,h_1090,l_$4_$count,w_1362,x_0,y_0/v1612200911/landscape-frame-a-size.jpg -O $5-$count.jpg
	fi
	wget https://res.cloudinary.com/dl4abuxel/image/upload/v1588690105/$4_$count.png -O $5-$count-full.jpg
  wget https://res.cloudinary.com/dl4abuxel/image/upload/c_crop,h_900,w_1200/v1588690105/$4_$count.png -O $5-$count-crop.jpg
  count=$(( $count +1 ))
done
