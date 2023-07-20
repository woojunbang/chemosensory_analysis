#!/bin/bash

cd /Volumes/WooJun_external/Study_BWJ/My_study/Tx_PacBio/bitacora/bitacora_for_interpro/final_selected_genes/revised_final

index_file="Tx_wj_Or_revised.txt"  # 인덱스 파일의 경로
output_file="Tx_wj_Or_numbered.txt"  # 접두사와 번호가 추가된 인덱스 파일의 경로

line_number=1
while IFS= read -r line; do
    prefix1="Txc" # 종이름 넣기
    prefix2="Or" # 유전자 이름 넣기
    indexed_line="${prefix1}${prefix2}${line_number} ${line}"
    echo "$indexed_line" >> "$output_file"
    ((line_number++))
done < "$index_file"

echo "인덱스numbering완료"