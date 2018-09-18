#!/system/xbin/bash
#color
underlined='\033[04m'
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
lightgreen='\e[1;32m'

trap ctrl_c INT
ctrl_c() {
clear
echo $red"What Happen's...?"
sleep 1
exit
} #Akhir Fungsi
penambahan(){ #Fungsi untuk penambahan angka
echo " \033[37;1mMasukkan angka pertama \033[36;1m: "
read p
echo " \033[37;1mMasukkan angka kedua :\033[36;1m "
read q
Tambah=$(echo "$p + $q" | bc)
echo "\033[37;1mHasil penambahan angka = \033[39;1;m$Tambah"
echo $white
echo "Pencet \033[31;1m{ENTER} \033[37;1muntuk Kembali Ke Menu"
read enter
} #Akhir Fungsi

pengurangan(){ #Fungsi untuk pengurangan angka
echo " \033[37;1mMasukkan angka pertama :\033[36;1m "
read p
echo " \033[37;1mMasukkan angka kedua :\033[36;1m "
read q
Kurang=$(echo "$p - $q" | bc)
echo "\033[37;1mHasil pengurangan angka = \033[36;1m$Kurang"
echo $white
echo "Pencet \033[31;1m{ENTER} \033[37;1muntuk Kembali Ke Menu"
read enter
} #Akhir Fungsi
perkalian(){ #Fungsi untuk perkalian angka
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Kali=$(echo "$p * $q" | bc)
echo "Hasil perkalian angka = $Kali"
echo $white
echo " Pencet \033[31;1m{ENTER} \033[37;1muntuk Kembali Ke Menu"
read enter
} #Akhir Fungsi
pembagian(){ #Fungsi untuk pembagian angka
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Bagi=$(echo "$p /$q" | bc)
echo "Hasil pembagian angka = $Bagi"
echo $white
echo  "Pencet \033[31;1m{ENTER} \033[37;1muntuk Kembali Ke Menu"
read enter
} #Akhir Fungsi
About(){ #about
clear
echo "\033[36;1m"
figlet -f future "calculator"
echo "\033[33;1mAuthor \033[31;1m: \033[36;1mGunadiCBR"
echo "\033[33;1mVersi  \033[31;1m: \033[36;1m1.0"
echo "\033[33;1mDate   \033[31;1m: \033[36;1m30-08-2020"
echo "\033[33;1mTeam   \033[31;1m: \033[36;1mMls18hckr"
echo "\033[33;1mGithub \033[31;1m: \033[36;1mhttps::/github.com/afelfgie"
echo "\033[37;1m"
echo  "Pencet \033[31;1m{ENTER} \033[37;1muntuk Kembali Ke Menu"
read enter
} #Akhir Fungsi
Exit(){ #Exit
echo "\033[36;1m"
echo ""
echo "By...By...By"
sleep 3
exit
} #Akhir Fungsi
MENU=1
while [ $MENU ]
do
clear
echo '\033[35;1m'
figlet -f future "calculator"
echo "\033[31;1m[=========================>"
echo "\033[31;1m1 \033[36;1mPenambahan"
echo "\033[31;1m2 \033[36;1mPengurangan"
echo "\033[31;1m3 \033[36;1mPerkalian"
echo "\033[31;1m4 \033[36;1mPembagian"
echo "\033[31;1m5 \033[36;1mAbout"
echo "\033[31;1m0 \033[37;1mExit"
echo "\033[31;1m[=========================>\033[37;1m"
echo ""
read -p "Pilih Nomor --> " MENU
case $MENU in
1) penambahan
;;
2) pengurangan
;;
3) perkalian
;;
4) pembagian
;;
5) About
;;
0) Exit
;;
*) echo ""
echo "\033[31;1m[!]WRONG INPUT[!]"
echo "\033[39;1m[+] TRY AGAIN [+]"
sleep 1
sh $0
esac
done
