#!/bin/bash
set -e
export CUDA_VISIBLE_DEVICES=6,7
# set the openai api url
export OPENAI_API_BASE="https://api.siliconflow.cn/v1"
# export OPENAI_API_BASE_LOCAL="http://0.0.0.0:9092/v1"
export OPENAI_API_BASE_LOCAL="http://0.0.0.0:9091/v1"
# set the openai api key
export OPENAI_API_KEY="sk-rqzxntebrwnivaauwwpubxuvrtjodcukaumwggtwymzvdfcw"
# python eval.py \
#   --experiment_type vidorag \
#   --dataset ViDoSeek  \
#   --query_file vidoseek.json \
#   --embed_model_name vidore/colqwen2-v1.0 \
#   --generate_vlm Qwen2.5-VL-7B-Instruct-AWQ
python eval.py \
  --experiment_type vidorag \
  --dataset SlideVQA  \
  --query_file slidevqa_refined.json \
  --embed_model_name vidore/colqwen2-v1.0 \
  --generate_vlm Qwen2.5-VL-7B-Instruct-AWQ