vcom -quiet ../../src/common/memorytree_package.vhd
vcom -quiet ../../src/ocp/ocp_config.vhd
vcom -quiet ../../src/ocp/ocp.vhd
#Leaf 2 Root
vcom -quiet ../../src/leaf2root_noc/router/routerpart.vhd
vcom -quiet ../../src/leaf2root_noc/router/router.vhd
vcom -quiet ../../src/leaf2root_noc/noc.vhd
#Root 2 leaf
vcom -quiet ../../src/root2leaf_noc/router/routerpart.vhd
vcom -quiet ../../src/root2leaf_noc/router/router.vhd
vcom -quiet ../../src/root2leaf_noc/noc.vhd
#Root 
vcom -quiet ../../src/root/root_package.vhd
vcom -quiet ../../src/root/refresh_timer.vhd
vcom -quiet ../../src/root/routing_table.vhd
vcom -quiet ../../src/root/schedule_table.vhd
vcom -quiet ../../src/root/root.vhd
#NA
vcom -quiet ../../src/network_adapter/na.vhd
#Test 
vcom -quiet ../../testunits/ocpburst.vhd
vcom -quiet ../../testunits/dummy_dram.vhd
vcom -quiet ../../build/root_2_root/top.vhd
