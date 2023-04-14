#!/bin/bash

# yolov7-tiny
# yolov7
# yolov7-x
# yolov7-w6
# yolov7-e6
# yolov7-d6
# yolov7-e6e

# python export.py --weights ./yolov7-tiny.pt \
#         --grid --end2end --simplify \
#         --topk-all 100 --iou-thres 0.65 --conf-thres 0.35 \
#         --img-size 224 224 --max-wh 224

python export.py --weights ./yolov7.pt \
        --grid --simplify \
        --topk-all 100 --iou-thres 0.65 --conf-thres 0.35 \
        --img-size 320 320 --max-wh 320

# python export.py --weights ./yolov7-tiny.pt \
#         --simplify \
#         --topk-all 100 --iou-thres 0.65 --conf-thres 0.35 \
#         --img-size 224 224