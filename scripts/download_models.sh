#!/bin/bash

urls=('https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_en-th_moses-newmm_space_130000-130000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_en-th_moses-spm_130000-16000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_en-th_spm-newmm_space_16000-130000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_en-th_spm-spm_32000-joined_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_th-en_newmm-moses_130000-130000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_th-en_newmm-spm_130000-16000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_th-en_spm-moses_16000-130000_v1.0.tar.gz'
      'https://github.com/vistec-AI/model-releases/releases/download/SCB_1M%2BTBASE_v1.0/SCB_1M+TBASE_th-en_spm-spm_32000-joined_v1.0.tar.gz')

mkdir -p models
pushd models
for url in "${urls[@]}"; do
    echo "Download $url"
    wget -q $url -O - | tar -xzf -
done
popd
