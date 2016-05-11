add wave -label clk sim:/root_2_root/root_module/clk 
add wave -label reset sim:/root_2_root/root_module/reset \
add wave sim:/root_2_root/root_module/cmd 
add wave sim:/root_2_root/root_module/cmd_next 
add wave sim:/root_2_root/root_module/core_id \
add wave sim:/root_2_root/root_module/counter \
add wave sim:/root_2_root/root_module/counter_next \
add wave sim:/root_2_root/root_module/idx \
add wave sim:/root_2_root/root_module/idx_next \
add wave sim:/root_2_root/root_module/l2r \
add wave sim:/root_2_root/root_module/l2r_state \
add wave sim:/root_2_root/root_module/l2r_state_next \
add wave -label mem_m sim:/root_2_root/root_module/mem_m \
add wave -label mem_s sim:/root_2_root/root_module/mem_s \
add wave sim:/root_2_root/root_module/mem_state \
add wave sim:/root_2_root/root_module/mem_state_next \
add wave sim:/root_2_root/root_module/outbuffer_addr \
add wave sim:/root_2_root/root_module/outbuffer_addr_next \
add wave sim:/root_2_root/root_module/outbuffer_data \
add wave sim:/root_2_root/root_module/outbuffer_data_next \
add wave sim:/root_2_root/root_module/outbuffer_en \
add wave sim:/root_2_root/root_module/outbuffer_en_next \
add wave sim:/root_2_root/root_module/postpone_transaction \
add wave sim:/root_2_root/root_module/r2l \
add wave sim:/root_2_root/root_module/r2l_route \
add wave sim:/root_2_root/root_module/ref \
add wave sim:/root_2_root/root_module/route \
add wave sim:/root_2_root/root_module/send \
add wave sim:/root_2_root/root_module/state \
add wave sim:/root_2_root/root_module/state_next \
add wave sim:/root_2_root/root_module/write_counter \
add wave sim:/root_2_root/root_module/write_counter_next

add wave -position insertpoint  \
sim:/root_2_root/root_module/pinged \
sim:/root_2_root/root_module/pinged_next
add wave -position insertpoint  \
sim:/root_2_root/root_module/cmder \
sim:/root_2_root/root_module/cmder_next
add wave -position insertpoint  \
sim:/root_2_root/root_module/r2s \
sim:/root_2_root/root_module/r2s_next
