cd /workspaces/zmk/app
west build -p -d build/left -b nice_nano_v2 -- -DSHIELD=a_dux_left -DZMK_CONFIG="../../zmk-config/config"
west build -p -d build/right -b nice_nano_v2 -- -DSHIELD=a_dux_right -DZMK_CONFIG="../../zmk-config/config"
# west build -p -d build/left -b nice_nano_v2 -- -DSHIELD=cradio_left -DZMK_CONFIG="../../zmk-config/config"
# west build -p -d build/right -b nice_nano_v2 -- -DSHIELD=cradio_right -DZMK_CONFIG="../../zmk-config/config"
cp build/left/zephyr/zmk.uf2 /workspaces/zmk-firmwares/zmk_left.uf2
cp build/right/zephyr/zmk.uf2 /workspaces/zmk-firmwares/zmk_right.uf2