# find_unused_images

find_unused_images.sh is a script to find unused images for your project and generate txt files on your desktop that contain all unused image names.

## Usage

### Fill in the path for the script

Open the script, assign the path of the xcassets folder to the image_path variable, and assign the path of the project source code to the search_path variable

Example:
```
# Your xcassets folder path, such as ./Images.xcassets
image_path='./Images.xcassets'
# The path of your source file, such as ./ExampleApp/
search_path='./ExampleApp/'
```

Then:
```
source find_unused_images.sh
```

The script will generate txt files on your desktop that contain all unused image names

## License

[MIT](./LICENSE)

