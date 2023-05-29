#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Example Commands
"""
#########
python3 -W ignore train.py --model PGAT  --dim 64  --n-heads 4  --lr 0.05  \
  --dataset cora    --act elu --weight-decay 0.0005  --dropout 0.6  \
  --optimizer  RiemannianAdam --manifold PoincareBall --c 0.3
#########
