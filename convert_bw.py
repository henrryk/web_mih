from PIL import Image

img = Image.open(r"c:\Proyectos\Webs\MIH\assets\img\SEBASTIÁN_BEDOYA.png")
img_gray = img.convert('L')
img_gray.save(r"c:\Proyectos\Webs\MIH\assets\img\SEBASTIAN_BEDOYA_BN.png")