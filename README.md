# ANN Processor Design

An implementation of an ANN processor on the Kria KV260 board.

## Matlab Model

- `matlab/Back_propagation.m`: back propagation algorithm
- `matlab/ann_training.m`: model for training
- `matlab/ann_inference_matmul.m`: model for inference with matrix multiplication

## Inference by Hand

The calculation of ANN inference using matrix multiplication by hand consists of 6 steps. The ANN processor design implements these steps in FPGA. This calculation is the same as `ann_inference_matmul.m`. This calculation is useful for the verification process.

1. Padding input:

$$
K_p=\begin{bmatrix}
2	& 7	& 6	& 3	& 6	& 3\\
10 & 2	& 8 & 10	& 9	& 2\\
5	& 3	& 1	& 3	& 5	& 6\\
3	& 3	& 6	& 1	& 6	& 10\\
1	& 1	& 1	& 1	& 1	& 1\\
\end{bmatrix}
$$

2. Matrix multiplication hidden layer 1:

$$
WB_2*K_p=Z_2
$$

$$
\begin{bmatrix}
-1.2 & 1.3 & 1.7 & -1.3 & -1.3\\
0.3	& 0.5	& 0.2	& 1	& -1\\
0.6	& 0.1	& 0.8	& 1.5	& -1\\
1.3	& -1.2	& -1.4	& 1.3	& -0.9\\
1.3 & 0.3	& 0.5	& 0.4	& -1\\
\end{bmatrix}*
\begin{bmatrix}
2	& 7	& 6	& 3	& 6	& 3\\
10 & 2	& 8 & 10	& 9	& 2\\
5	& 3	& 1	& 3	& 5	& 6\\
3	& 3	& 6	& 1	& 6	& 10\\
1	& 1	& 1	& 1	& 1	& 1\\
\end{bmatrix}=
\begin{bmatrix}
13.9	& -5.9 & -4.2 & 11.9 & 3.9 & -5.1\\
8.6	& 5.7	& 11	& 6.5	& 12.3	& 12.1\\
9.7	& 10.3	& 13.2	& 5.7	& 16.5	& 20.8\\
-13.4	& 5.5	& 3.7	& -11.9	& -3.1	& 5.2\\
8.3	& 11.4	& 12.1	& 7.8	& 14.4	& 10.5\\
\end{bmatrix}
$$

3. Activation hidden layer 1:

$$
\sigma(Z_2)=A_2
$$

$$
\sigma(
\begin{bmatrix}
13.9	& -5.9 & -4.2 & 11.9 & 3.9 & -5.1\\
8.6	& 5.7	& 11	& 6.5	& 12.3	& 12.1\\
9.7	& 10.3	& 13.2	& 5.7	& 16.5	& 20.8\\
-13.4	& 5.5	& 3.7	& -11.9	& -3.1	& 5.2\\
8.3	& 11.4	& 12.1	& 7.8	& 14.4	& 10.5\\
\end{bmatrix}
)=
\begin{bmatrix}
0.99	& 0.00	& 0.01	& 0.99	& 0.98	& 0.00\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.00 & 0.99 & 0.97 & 0.00 & 0.04 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
\end{bmatrix}
$$

4. Padding output hidden 1:

$$
A_{2p}=
\begin{bmatrix}
0.99	& 0.00	& 0.01	& 0.99	& 0.98	& 0.00\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.00 & 0.99 & 0.97 & 0.00 & 0.04 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
1 & 1 & 1 & 1 & 1 & 1\\
\end{bmatrix}
$$

5. Matrix multiplication hidden layer 2:

$$
WB_3*A_{2p}=Z_3
$$

$$
\begin{bmatrix}
5.2	& -0.3	& 0.8	& -3.5	& 0.1	& -1.5\\
-4.8	& 0.1	& 0.7	& 4	& 0.9	& -1.4\\
\end{bmatrix}*
\begin{bmatrix}
0.99	& 0.00	& 0.01	& 0.99	& 0.98	& 0.00\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
0.00 & 0.99 & 0.97 & 0.00 & 0.04 & 0.99\\
0.99 & 0.99 & 0.99 & 0.99 & 0.99 & 0.99\\
1 & 1 & 1 & 1 & 1 & 1\\
\end{bmatrix}=
\begin{bmatrix}
4.29 &	-4.37 & -4.23 &	4.29 & 4.04 & -4.34\\
-4.50	& 4.27	& 4.13 &	-4.50	& -4.23	& 4.24\\
\end{bmatrix}
$$

6. Activation hidden layer 2:

$$
\sigma(Z_3)=A_3
$$

$$
\sigma(
\begin{bmatrix}
4.29 &	-4.37 & -4.23 &	4.29 & 4.04 & -4.34\\
-4.50	& 4.27	& 4.13 &	-4.50	& -4.23	& 4.24\\
\end{bmatrix}
)=
\begin{bmatrix}
0.98	&	0.01	&	0.01	&	0.98	&	0.98	&	0.01\\
0.01	&	0.98	&	0.98	&	0.01	&	0.01	&	0.98\\
\end{bmatrix}
$$
