#!/bin/bash
set -e
export CUDA_VISIBLE_DEVICES=7
# set the openai api url
export OPENAI_API_BASE="https://api.siliconflow.cn/v1"
export OPENAI_API_BASE_LOCAL="http://0.0.0.0:9092/v1"
# set the openai api key
export OPENAI_API_KEY="sk-rqzxntebrwnivaauwwpubxuvrtjodcukaumwggtwymzvdfcw"
python eval.py \
  --experiment_type vidorag \
  --dataset ExampleDataset  \
  --query_file rag_dataset.json \
  --embed_model_name vidore/colqwen2-v1.0 \
  --generate_vlm Pro/Qwen/Qwen2.5-VL-7B-Instruct