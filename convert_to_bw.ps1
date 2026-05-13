Add-Type -AssemblyName System.Drawing

$inputPath = "c:\Proyectos\Webs\MIH\assets\img\SEBASTIÁN_BEDOYA.png"
$outputPath = "c:\Proyectos\Webs\MIH\assets\img\SEBASTIAN_BEDOYA_BN.png"

$bitmap = [System.Drawing.Image]::FromFile($inputPath)

$bitmapGray = New-Object System.Drawing.Bitmap($bitmap.Width, $bitmap.Height)

$graphics = [System.Drawing.Graphics]::FromImage($bitmapGray)

$colorMatrix = New-Object System.Drawing.Imaging.ColorMatrix
$colorMatrix.Matrix00 = 0.299
$colorMatrix.Matrix01 = 0.299
$colorMatrix.Matrix02 = 0.299
$colorMatrix.Matrix10 = 0.587
$colorMatrix.Matrix11 = 0.587
$colorMatrix.Matrix12 = 0.587
$colorMatrix.Matrix20 = 0.114
$colorMatrix.Matrix21 = 0.114
$colorMatrix.Matrix22 = 0.114
$colorMatrix.Matrix33 = 1
$colorMatrix.Matrix44 = 1

$imageAttributes = New-Object System.Drawing.Imaging.ImageAttributes
$imageAttributes.SetColorMatrix($colorMatrix)

$graphics.DrawImage($bitmap, (New-Object System.Drawing.Rectangle(0,0,$bitmap.Width,$bitmap.Height)), 0,0,$bitmap.Width,$bitmap.Height, [System.Drawing.GraphicsUnit]::Pixel, $imageAttributes)

$bitmapGray.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Png)

$bitmap.Dispose()
$bitmapGray.Dispose()
$graphics.Dispose()