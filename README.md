# Tugas Besar UTS Sistem Operasi

## 1. Identitas
* **Nama** : Bima Hayatullah
* **NIM** : 09011382530150
* **Kelas** : SKU3B

## 2. Deskripsi
Repositori ini berisi sekumpulan shell script untuk melakukan pencarian file catatan praktikum berformat `.txt` secara otomatis (termasuk di dalam subdirektori), mengarsipkannya ke dalam format `.tar.gz` dengan penamaan berbasis waktu, memverifikasi isi arsip, serta menca
tat riwayat setiap proses backup ke dalam file `backup.log`.

## 3. Cara Menjalankan
1. Menjalankan backup manual:
   ```bash
   ./script/backup.sh# uts-so-09011382530150

## 4. fitur pengembangan 
Fitur yang dipilih: Rotasi Arsip dan Manajemen Log Otomatis.

Cara mencobanya: Jalankan script backup secara berkala untuk memantau penambahan entri log di dalam direktori tujuan.

## 5. bukti job control
kali@kali:~/uts-so-09011382530150$ ./script/backup_loop.sh &
[1] 1420
Memulai backup loop. Tekan Ctrl+C untuk menghentikan proses di foreground.

kali@kali:~/uts-so-09011382530150$ jobs
[1]+  Running                 ./script/backup_loop.sh &

kali@kali:~/uts-so-09011382530150$ fg %1
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh

kali@kali:~/uts-so-09011382530150$ bg %1
[1]+ ./script/backup_loop.sh &

kali@kali:~/uts-so-09011382530150$ ps x
  PID TTY      STAT   TIME COMMAND
 1420 pts/0    Sl     0:00 /bin/bash ./script/backup_loop.sh

kali@kali:~/uts-so-09011382530150$ kill %1
[1]+  Terminated              ./script/backup_loop.sh

## 6. kendala solusi
Kendala: Sempat muncul pesan error bad interpreter: /bin/bash^M saat menjalankan script karena file sempat tersunting menggunakan editor berbasis Windows.

Solusi: Memperbaiki format akhir baris file menggunakan perintah sed atau menyunting ulang langsung di editor nano dalam lingkungan Linux.
