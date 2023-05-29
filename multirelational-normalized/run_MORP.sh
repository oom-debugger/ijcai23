CUDA_VISIBLE_DEVICES=0 python main.py --model tester --dataset WN18RR --num_iterations 500 --nneg 50 --batch_size 128 --lr 50 --dim 40 --curvature 0.03> logs/log.WN18RR.40.MORP
CUDA_VISIBLE_DEVICES=0 python main.py --model tester --dataset WN18RR --num_iterations 500 --nneg 50 --batch_size 128 --lr 50 --dim 200 --curvature 0.03> logs/log.WN18RR.200.MORP
CUDA_VISIBLE_DEVICES=0 python main.py --model tester --dataset FB15k-237 --num_iterations 500 --nneg 50 --batch_size 128 --lr 10 --dim 200 --curvature 0.03> logs/log.FB15k_237.200.MORP
CUDA_VISIBLE_DEVICES=0 python main.py --model tester --dataset FB15k-237 --num_iterations 500 --nneg 50 --batch_size 128 --lr 10 --dim 40 --curvature 0.03> logs/log.FB15k_237.40.MORP
