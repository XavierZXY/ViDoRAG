#!/bin/bash
set -e
export CUDA_VISIBLE_DEVICES=6,7
# set the openai api url
export OPENAI_API_BASE="https://api.siliconflow.cn/v1/chat/completions"
# set the openai api key
export OPENAI_API_KEY="sk-rqzxntebrwnivaauwwpubxuvrtjodcukaumwggtwymzvdfcw"
python eval.py \
  --experiment_type retrieval_infer \
  --dataset ViDoSeek  \
  --query_file vidoseek.json \
  --embed_model_name vidore/colqwen2-v1.0 \
  --generate_vlm Qwen2.5-VL-7B-Instruct