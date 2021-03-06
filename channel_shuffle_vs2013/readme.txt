Made by Lukas Orsvärn, direct feedback to me at http://orsvarn.com
The Game Assembly
   ________                           __   _____ __          __________   
  / ____/ /_  ____ _____  ____  ___  / /  / ___// /_  __  __/ __/ __/ /__ 
 / /   / __ \/ __ `/ __ \/ __ \/ _ \/ /   \__ \/ __ \/ / / / /_/ /_/ / _ \
/ /___/ / / / /_/ / / / / / / /  __/ /   ___/ / / / / /_/ / __/ __/ /  __/
\____/_/ /_/\__,_/_/ /_/_/ /_/\___/_/   /____/_/ /_/\__,_/_/ /_/ /_/\___/ 
Version 1.0.0

channel_shuffle [input 1] [input 2 (optional)] [output] [flag/argument pairs (at least one)]

This application is distributed with an example .bat file and two images that
you can study and execute to see the application in action.

- - - - - - - -
Example 1:
Takes the red and green channels from image1.tga and puts them into the green
and alpha channels of a new image called output1.tga. The rest of the channels
will default to black.

    channel_shuffle image1.tga output1.tga -g 1r -a 1g

- - - - - - - -
Example 2:
Takes the red, green and blue channels from image1.tga and puts them into the
red, green and blue channels of a new image called output2.tga, takes the red
channel of image2.tga and puts it into the alpha channel of output2.tga.

    channel_shuffle image1.tga image2.tga output2.tga -r 1r -g 1g -b 1b -a 2r

- - - - - - - -
Example 3:
Takes the red channel from image1.tga, inverts it, and puts it into the red
green and blue channels of output3.tga. The alpha channel will default to black.

    channel_shuffle image1.tga output3.tga -r 1ri -g 1ri -b 1ri

# # # # # # # # # # # # # # # #
Supported formats:

This application uses SOIL (Simple OpenGL Image Library)
http://www.lonesock.net/soil.html

Supported input formats:
    BMP - non-1bpp, non-RLE (from stb_image documentation)
    PNG - non-interlaced (from stb_image documentation)
    JPG - JPEG baseline (from stb_image documentation)
    TGA - greyscale or RGB or RGBA or indexed, uncompressed or RLE
    DDS - DXT1/2/3/4/5, uncompressed
    PSD - (from stb_image documentation)
    HDR - converted to LDR

Supported output formats:
    TGA - Uncompressed
    BMP - RGB, uncompressed
    DDS - DXT5

# # # # # # # # # # # # # # # #
Flags:

-r - Targets red channel of the output image.
-g - Targets green channel of the output image.
-b - Targets blue channel of the output image.
-a - Targets alpha channel of the output image.

# # # # # # # # # # # # # # # #
Arguments:

An argument is constructed by taking a number that represents what image to
take a channel from (1 or 2) and combining it with a letter that represents
which channel to take from that image (r, g, b or a).

Optionally an 'i' can be added after at the end of the argument to also invert
the channel in the resulting image.

1 - Refers to input image 1.
2 - Refers to input image 2.

r - Takes the red channel from the supplied input image.
g - Takes the green channel from the supplied input image.
b - Takes the blue channel from the supplied input image.
a - Takes the alpha channel from the supplied input image.

i - Inverts the supplied channel in the resulting image.
