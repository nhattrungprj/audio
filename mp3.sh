#!/bin/bash

# Đảm bảo thư mục mp3 đã tồn tại
mkdir -p mp3

# Sử dụng curl để tải các URL từ tệp mp3.txt và di chuyển vào thư mục mp3
while read url; do
  file_name=$(basename "$url")
  curl -o "mp3/$file_name" "$url"
done < mp3.txt
