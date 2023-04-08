# zaapka3dsmockup
dlaszprinka.exe

# Jak zedytować dla własnych potrzeb (debil edition)

instaluj kurwa devkitpro (weź tam że nintendo 3ds development) https://github.com/devkitPro/installer/releases

instaluj kurwa lovebrew https://github.com/lovebrew/lovebrew/releases/tag/0.6.0

przepisz swój numerki pod kodem kreskowym z aplikacji żaapka (przykład: 995246045758)

potem idziesz tu https://barcode.tec-it.com/en i dajesz te cyferki tam i pobierasz ten obrazek jako .png

potem pobierasz to https://github.com/TurtleP/Convert3x

wypakuj tego convert3x i daj tam ten plik .png 

zainstaluj pythona.

wejdź w cmd do tego folderu Convert3x-master i dajesz kurwa "python main.py"

po konwersji dajesz wygenerowany plik (zmień mu nazwe na "barcode.t3x" do folderu "love-main" z repozytorium zaapka3dsmockup

potem w folderze z repozytorium (tam gdzie masz lovebrew.toml) otwierasz cmd i wpisujesz lovebrew build. powinno wygenerować plik .3dsx


