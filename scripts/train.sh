export PYTHONPATH="${PYTHONPATH}:/shared/xudongliu/code/f_server/drn/lib"
export CUDA_VISIBLE_DEVICES=2,3,4,5
python3 segment.py train -d /shared/xudongliu/bdd100k/seg/seg -c 19 -s 768 --arch drn_d_105 \
--random-scale 2 --random-rotate 0 --batch-size 8 --epochs 500 \
--lr 0.01 --momentum 0.9 -j 16 --lr-mode poly --save_path out/drn_d_10_up_768x768_500e