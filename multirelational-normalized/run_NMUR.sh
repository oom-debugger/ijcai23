CUDA_VISIBLE_DEVICES=0 python main.py --model normalized --dataset WN18RR --num_iterations 500 --nneg 50 --batch_size 128 --lr 0.01 --dim 40 --curvature 0.03> logs/log.WN18RR.40.NMUR
CUDA_VISIBLE_DEVICES=0 python main.py --model normalized --dataset WN18RR --num_iterations 500 --nneg 50 --batch_size 128 --lr 0.01 --dim 200 --curvature 0.03> logs/log.WN18RR.200.NMUR
CUDA_VISIBLE_DEVICES=0 python main.py --model normalized --dataset FB15k-237 --num_iterations 500 --nneg 50 --batch_size 128 --lr 0.01 --dim 200 --curvature 0.03> logs/log.FB15k_237.200.NMUR
CUDA_VISIBLE_DEVICES=0 python main.py --model normalized --dataset FB15k-237 --num_iterations 500 --nneg 50 --batch_size 128 --lr 0.01 --dim 40 --curvature 0.03> logs/log.FB15k_237.40.NMUR
