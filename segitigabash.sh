#!/bin/bash
lagi='y'
while [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do
clear
echo "=====================================";
echo "            MENU PROGRAM             ";
echo "=====================================";
echo "1. Program Input Nama, Kelas, dan NPM";
echo "2. Program Mencari Luas Segitiga";
echo "3. Program Perhitungan Kelulusan";
echo "4. Program Mencetak Perulangan";
echo "5. Exit";
echo "=====================================";
read -p "Masukkan Pilihan Anda [1-5]: " pil;
echo "";

case $pil in
1)    echo -n "Masukkan Nama: "
    read nama
    echo -n "Masukkan Kelas: "
    read kelas
    echo -n "Masukkan NPM: "
    read npm
    echo ""
    echo "============================="
    echo "     DATA YANG DI INPUT      "
    echo "============================="
    echo "Nama: $nama"
    echo "Kelas: $kelas"
    echo "NPM: $npm"
    echo "============================="
    ;;
2)    echo -n "Masukkan Alas: ";
    read alas
    echo -n "Masukkan Tinggi: ";
    read tinggi
    let luas=$alas*$tinggi/2
    echo ""
    echo "============================="
    echo "       LUAS SEGITIGA         "
    echo "============================="
    echo "Alas: $alas"
    echo "Tinggi: $tinggi"
    echo "Luas: $luas"
    echo "============================="
    ;;
3)    echo -n "Masukkan Nilai UTS: "
    read uts
    echo -n "Masukkan Nilai UAS: "
    read uas
    let akhir=( $uts+$uas )/2
    echo ""
    if [ $akhir -ge 90 ];
    then
    echo "================================"
    echo "      DATA NILAI KELULUSAN      "
    echo "================================"
    echo "Nilai UTS: $uts"
    echo "Nilai UAS: $uas"
    echo "Keterangan: Lulus dengan grade A"
    echo "================================"
    elif [ $akhir -ge 80 ];
    then
    echo "================================"
    echo "      DATA NILAI KELULUSAN      "
    echo "================================"
    echo "Nilai UTS: $uts"
    echo "Nilai UAS: $uas"
    echo "Keterangan: Lulus dengan grade B"
    echo "================================"
    elif [ $akhir -ge 70 ];
    then
    echo "================================"
    echo "      DATA NILAI KELULUSAN      "
    echo "================================"
    echo "Nilai UTS: $uts"
    echo "Nilai UAS: $uas"
    echo "Keterangan: Lulus dengan grade C"
    echo "================================"
    elif [ $akhir -ge 60 ];
    then
    echo "================================"
    echo "      DATA NILAI KELULUSAN      "
    echo "================================"
    echo "Nilai UTS: $uts"
    echo "Nilai UAS: $uas"
    echo "Keterangan: Lulus dengan grade D"
    echo "================================"
    else
    echo "================================"
    echo "      DATA NILAI KELULUSAN      "
    echo "================================"
    echo "Nilai UTS: $uts"
    echo "Nilai UAS: $uas"
    echo "Keterangan: Anda Tidak Lulus"
    echo "================================"
    fi
    ;;
4)    echo -n "Masukkan Batas Perulangan: ";
    read a
    ulang=1
    while [ $ulang -le $a ]
    do
    echo "LAB Teknik Informatika";
    let "ulang=$ulang+1"
    done
    ;;    
5)    exit
    ;;
*)    echo "Maaf, Pilihan Tidak tersedia"
esac
echo ""
echo "THANKS, CREATED BY: Bagas Retno Wibowo"
echo ""
echo -n "Ingin Lanjut ke Program Yang Lain? [y/n]: ";
read lagi;
while [ $lagi != 'y' ] && [ $lagi != 'Y' ] && [ $lagi != 'n' ] && [ $lagi != 'N' ];
do
echo "Maaf, input yang anda masukkan salah";
echo -n "Ingin Lanjut ke Program Yang Lain? [y/n]: ";
read lagi;
done
done
