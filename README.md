# ANN Processor Design

An implementation of an ANN processor on the Kria KV260 board. The design was implemented using 6x6 systolic matrix multiplication.

Tested on:
- Kria KV260 with PYNQ framework
- Vivado 2022.1

## Application

Classification of someone's tastes to Indonesian food.

### Dataset

Dataset of someone's taste.

| Name       	| Sour 	| Sweet 	| Salty 	| Spicy 	| Taste   	| Label 	|
|------------	|------	|-------	|-------	|-------	|---------	|-------	|
| Sate       	| 2    	| 10    	| 5     	| 5     	| Like    	| [1,0] 	|
| Soto       	| 7    	| 2     	| 3     	| 3     	| Dislike 	| [0,1] 	|
| Karedok    	| 6    	| 8     	| 1     	| 6     	| Dislike 	| [0,1] 	|
| Gudeg      	| 3    	| 10    	| 3     	| 1     	| Like    	| [1,0] 	|
| Ikan Bakar 	| 6    	| 9     	| 5     	| 6     	| Like    	| [1,0] 	|
| Rendang    	| 3    	| 2     	| 6     	| 10    	| Dislike 	| [0,1] 	|

### Neural Network Architecture

The network consists of three layers: input, hidden, and output. On the input layer, there are 4 nodes. On the hidden layer, there are 5 nodes. On the output layer, there are 2 nodes.

## Matlab Model

Matlab/Octave model for training and inference:
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

## RTL Simulation

### 1. Systolic Module

Simulation of `systolic.v` module using `systolic_tb.v` testbench.

<img src="https://github.com/yohanes-erwin/ann_processor/blob/main/image/systolic_module.jpg" width="600" />

Matrix multiplication hidden layer 1:
![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/output_hidden1.png)

Verification with the model. The decimal may be different due to rounding and fixed-point implementation.

$$
Z_2=
\begin{bmatrix}
13.9	& -5.9 & -4.2 & 11.9 & 3.9 & -5.1\\
8.6	& 5.7	& 11	& 6.5	& 12.3	& 12.1\\
9.7	& 10.3	& 13.2	& 5.7	& 16.5	& 20.8\\
-13.4	& 5.5	& 3.7	& -11.9	& -3.1	& 5.2\\
8.3	& 11.4	& 12.1	& 7.8	& 14.4	& 10.5\\
\end{bmatrix}
$$

Matrix multiplication hidden layer 2:
![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/output_hidden2.png)

Verification with the model. The decimal may be different due to rounding and fixed-point implementation.

$$
Z_3=
\begin{bmatrix}
4.29 &	-4.37 & -4.23 &	4.29 & 4.04 & -4.34\\
-4.50	& 4.27	& 4.13 &	-4.50	& -4.23	& 4.24\\
\end{bmatrix}
$$

### 2. ANN Module

Simulation of `ann.v` module using `ann_tb.v` testbench.

<img src="https://github.com/yohanes-erwin/ann_processor/blob/main/image/ann_module.jpg" width="700" />

ANN core timing diagram.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/ann_module.png)

How it works:
1. Start the controller FSM
2. Read input from memory followed by weight and bias 2
3. Systolic input stream hidden layer 1
4. Output stream from sigmoid hidden layer 1
5. Read weight and bias 3 from memory
6. Systolic input stream hidden layer 2
7. Output from sigmoid hidden layer 2
8. Write output to memory
9. Done signal

### 3. AXIS ANN Module

Simulation of `axis_ann.v` module using `axis_ann_tb.v` testbench.

<img src="https://github.com/yohanes-erwin/ann_processor/blob/main/image/axis_ann_module.jpg" width="600" />

AXIS ANN core timing diagram.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/axis_ann_module.png)

AXIS packet showing input packet and output packet from two inferences. These packets can be from and to AXI DMA in the SoC integration later on.

## SoC Design

Block design of the system.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/block_design.png)

ZYNQ configuration.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/zynq.png)

DMA configuration.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/dma.png)

Data mapping inside the DDR memory for weight, bias, and input.

<img src="https://github.com/yohanes-erwin/ann_processor/blob/main/image/input_buff.jpg" width="150" />

Data mapping inside the DDR memory for output.

<img src="https://github.com/yohanes-erwin/ann_processor/blob/main/image/output_buff.jpg" width="150" />

## Result

Inference result from PYNQ Jupyter Notebook `ann_hw.ipynb`.

![](https://github.com/yohanes-erwin/ann_processor/blob/main/image/result.png)

Performance comparison with SW (numpy) `ann_compare.ipynb`.

| Number of Inference | HW Computation Time [s] | SW Computation Time [s] |
|---------------------|-------------------------|-------------------------|
| 1                   | 0.011                   | 0.002                   |
| 10                  | 0.012                   | 0.004                   |
| 100                 | 0.027                   | 0.023                   |
| 1000                | 0.181                   | 0.210                   |
| 10000               | 1.700                   | 2.003                   |
| 100000              | 16.937                  | 19.223                  |
| 1000000             | 168.306                 | 192.882                 |

The greater the number of inferences, the faster HW computation time compared to SW computation time.

