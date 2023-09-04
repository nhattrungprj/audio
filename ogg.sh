#!/bin/bash

# Đảm bảo thư mục ogg đã tồn tại
mkdir -p ogg

# Sử dụng curl để tải các URL từ tệp ogg.txt và di chuyển vào thư mục ogg
while read url; do
  file_name=$(basename "$url")
  curl -o "ogg/$file_name" "$url"
done < ogg.txt
