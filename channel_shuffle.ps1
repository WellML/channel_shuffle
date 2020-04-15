# Stand: 14.04.2020
# Autor: Thomas Bednarski
# Masterarbeit 

# Anwendung zur Datei channel_shuffle

# BEARBEITUNG NÖTIG !
########################################################################

#Pfad Channel Shuffle

$channel_shuffle = "C:\Users\thoma\Desktop\channel_shuffle_gui\"


#Pfad Trainingsbilder

$srcpath = "C:\Users\thoma\Desktop\channel_shuffle_gui\example_train_images\"


#Format Input-Bilder

$informat = "jpg"
#Mögliche Formate:
#    bmp - non-1bpp, non-RLE (from stb_image documentation)
#    png - non-interlaced (from stb_image documentation)
#    jpg - JPEG baseline (from stb_image documentation)
#    tga - greyscale or RGB or RGBA or indexed, uncompressed or RLE
#    dds - DXT1/2/3/4/5, uncompressed
#    psd - (from stb_image documentation)
#    hdr - converted to LDR


#Format Output-Bilder

$outformat = "bmp"
#Mögliche Formate:
#    tga - Uncompressed
#    bmp - RGB, uncompressed
#    dds - DXT5

########################################################################




cd $channel_shuffle
$path = Get-ChildItem -path $srcpath -Filter "*.$informat"


foreach ($file in $path) {
    $outfile = (Get-Item $srcpath\${file} ).Basename
    $test = $srcpath+$outfile
    if(Test-Path $test"_02."$outformat){
        }
        else
        {
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_02.$outformat -r 1r -g 1r -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_03.$outformat -r 1r -g 1r -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_04.$outformat -r 1r -g 1r -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_05.$outformat -r 1r -g 1g -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_06.$outformat -r 1r -g 1g -b 1g
        #.\channel_shuffle $srcpath\${file} $srcpath\${outfile}__.$outformat -r 1r -g 1g -b 1b :Originalbild

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_07.$outformat -r 1r -g 1b -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_08.$outformat -r 1r -g 1b -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_09.$outformat -r 1r -g 1b -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_10.$outformat -r 1g -g 1r -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_11.$outformat -r 1g -g 1r -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_12.$outformat -r 1g -g 1r -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_13.$outformat -r 1g -g 1g -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_14.$outformat -r 1g -g 1g -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_15.$outformat -r 1g -g 1g -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_16.$outformat -r 1g -g 1b -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_17.$outformat -r 1g -g 1b -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_18.$outformat -r 1g -g 1b -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_19.$outformat -r 1b -g 1r -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_20.$outformat -r 1b -g 1r -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_21.$outformat -r 1b -g 1r -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_22.$outformat -r 1b -g 1g -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_23.$outformat -r 1b -g 1g -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_24.$outformat -r 1b -g 1g -b 1b

        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_25.$outformat -r 1b -g 1b -b 1r
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_26.$outformat -r 1b -g 1b -b 1g
        .\channel_shuffle $srcpath\${file} $srcpath\${outfile}_27.$outformat -r 1b -g 1b -b 1b
        }

}