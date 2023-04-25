#!/bin/bash

#usage: bash ./export.sh

INPUT_SIZES=(320 640)
MODEL_NAMES=(yolov7-tiny yolov7 yolov7x yolov7-w6 yolov7-e6 yolov7-d6 yolov7-e6e)

for m in ${MODEL_NAMES[@]}; do

    for i in ${INPUT_SIZES[@]}; do

        python export.py --weights ${m}.pt \
            --grid --simplify \
            --topk-all 100 --iou-thres 0.65 --conf-thres 0.35 \
            --img-size $i $i --max-wh $i

        mv ${m}.onnx ${m}_${i}.onnx

        rm *.torchscript.pt

        rm *.torchscript.ptl

    done

done
