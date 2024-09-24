vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/zynq_ultra_ps_e_vip_v1_0_12
vlib riviera/xil_defaultlib
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_7
vlib riviera/lib_fifo_v1_0_16
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_28
vlib riviera/axi_sg_v4_1_15
vlib riviera/axi_dma_v7_1_27
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_crossbar_v2_1_27
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconstant_v1_1_7
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_converter_v2_1_26
vlib riviera/axi_clock_converter_v2_1_25
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 riviera/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 riviera/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_28 riviera/axi_datamover_v5_1_28
vmap axi_sg_v4_1_15 riviera/axi_sg_v4_1_15
vmap axi_dma_v7_1_27 riviera/axi_dma_v7_1_27
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 riviera/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26
vmap axi_clock_converter_v2_1_25 riviera/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 riviera/axi_dwidth_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/ProgramFiles/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_zynq_ultra_ps_e_0_0/sim/design_ann_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_27 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_ann/ip/design_ann_axi_dma_0_0/sim/design_ann_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_xbar_0/sim/design_ann_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_ann/ip/design_ann_rst_ps8_0_99M_0/sim/design_ann_rst_ps8_0_99M_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_0/sim/bd_9870_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_1/sim/bd_9870_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_2/sim/bd_9870_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_3/sim/bd_9870_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_4/sim/bd_9870_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_5/sim/bd_9870_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_6/sim/bd_9870_sarn_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_7/sim/bd_9870_srn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_8/sim/bd_9870_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/ip/ip_9/sim/bd_9870_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/bd_0/sim/bd_9870.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_0/sim/design_ann_axi_smc_0.v" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_4e4c_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_4e4c_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_4e4c_s00mmu_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_4e4c_s00tr_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_4e4c_s00sic_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_4e4c_s00a2s_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_4e4c_sawn_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_4e4c_swn_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_4e4c_sbn_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_4e4c_m00s2a_0.sv" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_4e4c_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/bd_0/sim/bd_4e4c.v" \
"../../../bd/design_ann/ip/design_ann_axi_smc_1_0/sim/design_ann_axi_smc_1_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_25  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../vivado.gen/sources_1/bd/design_ann/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/ec67/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/8cdf/hdl" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/f0b6/hdl/verilog" "+incdir+../../../../vivado.gen/sources_1/bd/design_ann/ipshared/66be/hdl/verilog" "+incdir+C:/ProgramFiles/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_ann/ip/design_ann_auto_ds_0/sim/design_ann_auto_ds_0.v" \
"../../../bd/design_ann/ip/design_ann_auto_pc_0/sim/design_ann_auto_pc_0.v" \
"../../../bd/design_ann/ip/design_ann_auto_ds_1/sim/design_ann_auto_ds_1.v" \
"../../../bd/design_ann/ip/design_ann_auto_pc_1/sim/design_ann_auto_pc_1.v" \
"../../../bd/design_ann/ip/design_ann_axis_ann_0_0/sim/design_ann_axis_ann_0_0.v" \
"../../../bd/design_ann/sim/design_ann.v" \

vlog -work xil_defaultlib \
"glbl.v"

