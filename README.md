Official implementation for: [A Unification Framework for Euclidean and Hyperbolic Graph Neural Networks](https://arxiv.org/pdf/2206.04285.pdf)

# Overview
Hyperbolic neural networks can effectively capture the inherent hierarchy of graph datasets, and consequently a powerful choice of GNNs. However, they entangle multiple incongruent (gyro-)vector spaces within a layer, which makes them limited in terms of generalization and scalability. 
In this work, we propose the Poincaré disk model as our search space, and apply all approximations on the disk (as if the disk is a tangent space derived from the origin), thus getting rid of all inter-space transformations. Such an approach enables us to propose a hyperbolic normalization layer and to further simplify the entire hyperbolic model to a Euclidean model cascaded with our hyperbolic normalization layer. We applied our proposed nonlinear hyperbolic normalization to the current state-of-the-art homogeneous and multi-relational graph networks. We demonstrate that our model not only leverages the power of Euclidean networks such as interpretability and efficient execution of various model components, but also outperforms both Euclidean and hyperbolic counterparts on various benchmarks. 

# Implementation:
The paper proposes a hyperbolic layer that can attach to a given Euclidean model to incrementally make it (pseudo) hyperbolic. Thus, the repository is primarily consists of a hyperbolic layer and the codes from (1) [GraphZoo](https://github.com/AnoushkaVyas/GraphZoo)  (2) [Multi-relational Poincaré Graph Embeddings
](https://github.com/ibalazevic/multirelational-poincare), (3) [Relational Graph Convolutional Networks: A Closer Look](https://github.com/thiviyanT/torch-rgcn), and (4) [GCNII: Simple and Deep Graph Convolutional Networks](https://github.com/chennnM/GCNII)

The hyperbolic layer is implemented as: 
```
 output = scale * PoincareBall.proj(PoincareBall.expmap0(PoincareBall.proj_tan0(input, curvature), c=curvature), c=curvature)
```
where:
- `scale` is constant to increase the magnitude of the embeddings. Scaling up the embeddings increases the floating point operation accuracy and hence likely to improve the final outcome.
- `curavate` is the curvature of the hyperbolic space.


## GraphZoo Experiments (in hyperbolic-layers folder):
In order to reproduce the results for tables 1, one can use the hyper-parameters we provided in the appendix.
For table 3, the user need to uncomment the layers the re-run the expriments (for example py_hnn/models/encoders.py PGCN encode function line 115)
Example:
```
> python3 -W ignore train.py --model PGAT  --dim 64  --n-heads 4  --lr 0.05    --dataset cora    --act relu --weight-decay 0.0005  --dropout 0.6  --optimizer  RiemannianAdam --manifold PoincareBall
```

## Multi-Relational Models Experiments (multirelatoinal-normalized folder):
For table 2, the script in the folder are self-sufficient. Example:
```
> multirelational-normalized/run_MURP.sh
```

## Relational Graph Convolutional Networks (torch-RGCN folder): 
You can simply use one of the configs in the config files.  The names with h- at the beginning (e.g. hrgcn) indicate 
our hyperbolic normalization is added to the model.

Example: 
```
> python3 classify_nodes.py with configs/hrgcn/nc-AIFB.yaml
```

## GCNII Experiments (GCNII-master):
For the hyperbolic hyper-parameters such as the curvature and scale, we have done a naive hyper-parameter search. For experiments, try scales = 1, 3, 5, 10 and for curvature = 0.25, 0.5, 1, 1.5
Examples can be found `semi.sh`. 

# Citation
If you find the paper or the repo useful, please cite it with

@article{khatir2023gnn,<br />
  title={A Unification Framework for Euclidean and Hyperbolic Graph Neural Networks},<br />
  author={Mehrdad Khatir, Nurendra Choudhary, Sutanay Choudhury, Khushbu Agarwal, Chandan K. Reddy},<br />
  journal={arXiv preprint arXiv:2206.04285},<br />
  year={2023}<br />
}

