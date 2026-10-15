#!/bin/bash
# Nama  : Bima Hayatullah
# NIM   : 09011382530150
# Kelas : SKU3B

# Interval jeda waktu dalam detik (bawaan 60 detik)
INTERVAL=60

echo "Memulai backup loop. Tekan Ctrl+C untuk menghentikan proses di foreground."

while true; do
    # Menjalankan script backup utama
    ./script/backup.sh

    echo "Menunggu selama $INTERVAL detik sebelum backup berikutnya..."
    sleep "$INTERVAL"
done
