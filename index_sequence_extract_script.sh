#!/bin/bash

cd /Volumes/WooJun_external/Study_BWJ/My_study/Tx_PacBio/bitacora/bitacora_for_interpro/final_selected_genes/revised_final # 인덱스, 서열정보 있는 파일의 경로

index_file="Tx_am_Gr_revised.txt"  # 인덱스 파일의 경로
sequence_file="pupative_Tx_am_Gr.fasta"  # 서열 정보가 있는 파일의 경로
output_file="Tx_am_Gr_final_sequences.fas"  # 필터링된 서열 정보를 저장할 파일

while IFS= read -r index; do
    sequence=$(grep -A 1 "$index" "$sequence_file" | tail -n 1)
    echo ">$index" >> "$output_file"
    echo "$sequence" >> "$output_file"
    echo "" >> "$output_file"
done < "$index_file"

echo "추출완료"