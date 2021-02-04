# Cloudinary framed image generator

Simple shell script to generate Etsy-ready artwork product images from Cloudinary. The script will iterate through batches of sequentially numbered images, generating framed, full size and cropped versions of each. 

Files will be output as JPEGs.

1. Upload product images to Cloudinary
2. Run script
3. ...
4. Profit

## Usage

```
sh frame.sh [image shape] [start no] [stop no] [batch name] [output name]
```

For example:

```
sh frame.sh l 1 20 Buttterflies_8x10 Butterflies
```
### Image shape

The script can generate frames for square, A4 and 8x10 images, portrait or landscape.
* ```p``` = portrait 8x10
* ```l``` = landscape 8x10
* ```pa``` = portrait A4
* ```la``` = landscape A4
* ```s``` = square

### Start and stop numbers

Specify the number of images to download in a batch. If there are 20 images and you want to download all of them, put ```1 20```. If you only want a few, specify the range within, e.g ```5 15```.

### Batch name

Make sure images uploaded to Cloudinary follow the pattern ```[batch name]_[number]```, e.g. ```Butterflies_8x10_1```, ```Butterflies_8x10_2``` etc. Use batch name without the trailing underscore and number, e.g. ```Butterflies_8x10```.

### Output name

This is the saved filename for your images. This can be the same or different to the batch name. They will also be numbered sequentially.
