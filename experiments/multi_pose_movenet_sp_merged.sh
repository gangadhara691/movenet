cd src
python main.py multi_pose --exp_id cocosp_merge_movenet --dataset coco_hpsp_merge --dataset coco_hpsp --arch movenet --batch_size 64 --master_batch 4 --lr 5e-4 --gpus 0,1,2,3 --num_epochs 320 --lr_step 270,300 --num_workers 16 --load_model ../models/ctdet_movenet.pth --eval_oracle_offset --eval_oracle_wh
# test
python test.py multi_pose --exp_id cocosp_merge_movenet --dataset coco_hpsp_merge --arch movenet --keep_res --resume
# flip test
python test.py multi_pose --exp_id cocosp_merge_movenet --dataset coco_hpsp_merge --arch movenet --keep_res --resume --flip_test
cd ..