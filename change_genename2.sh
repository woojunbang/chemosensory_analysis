#!/bin/bash

cd /Volumes/WooJun_external/Study_BWJ/My_study/Tx_PacBio/bitacora/bitacora_for_interpro/final_selected_genes/revised_final/sequence_files/Gr

index_file="Sc_Gr_numbered.txt"  # 인덱스 파일의 경로
sequence_file="Sc_Gr_final_sequences.fas"  # 시퀀스 파일의 경로
output_file="Sc_Gr_sequence.fas"  # 이름이 변경된 시퀀스 파일의 경로

awk 'FNR==NR { indexNames[$2]=$1; next } /^>/ { gsub(">.+", ">"indexNames[substr($0, 2)]) } 1' "$index_file" "$sequence_file" > "$output_file"
