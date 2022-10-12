#!/bin/bash

cd ../tools

# python convert_prima_to_coco.py \
#     --prima_datapath ../data/custom \
#     --anno_savepath ../data/custom/result.json 

python train_net.py \
    --dataset_name          custom-layout \
    --json_annotation_train ../data/custom/result.json \
    --image_path_train      ../data/custom/ \
    --json_annotation_val   ../data/custom/result.json \
    --image_path_val        ../data/custom/ \
    --config-file           ../configs/custom/fast_rcnn_R_50_FPN_3x.yaml \
    OUTPUT_DIR  ../outputs/custom/fast_rcnn_R_50_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 