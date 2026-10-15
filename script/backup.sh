#!/bin/bash
# Nama  : Bima Hayatullah
# NIM   : 09011382530150
# Kelas : SKU3B

# Konfigurasi Direktori dan Variabel
SRC_DIR="$HOME/data_09011382530150"
DEST_DIR="$HOME/backup_09011382530150"
LOG_FILE="$DEST_DIR/backup.log"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="backup_09011382530150_${TIMESTAMP}.tar.gz"
LIST_FILE="/tmp/file_list_09011382530150.txt"

# 1. Buat direktori tujuan backup jika belum ada
mkdir -p "$DEST_DIR"

# 2. Cari semua file .txt termasuk di dalam subdirektori
find "$SRC_DIR" -type f -name "*.txt" > "$LIST_FILE"

# 3. Arsipkan dan kompresi file-file tersebut
tar -czvf "$DEST_DIR/$ARCHIVE_NAME" -T "$LIST_FILE"

# 4. Verifikasi isi arsip tanpa mengekstraknya
echo "Verifikasi isi arsip:"
tar -tzvf "$DEST_DIR/$ARCHIVE_NAME"

# 5. Catat log backup (tanggal jam | nama arsip | ukuran arsip)
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
ARCHIVE_SIZE=$(du -h "$DEST_DIR/$ARCHIVE_NAME" | awk '{print $1}')
echo "$CURRENT_TIME | $ARCHIVE_NAME | $ARCHIVE_SIZE" >> "$LOG_FILE"

echo "Backup berhasil diselesaikan!"
# Update komentar backup utama
