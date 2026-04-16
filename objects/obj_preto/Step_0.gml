if (keyboard_check(vk_up)) {
    global.vel_mov += 0.01;
}
else if (keyboard_check(vk_down)) {
    global.vel_mov -= 0.01;
}
else {
    global.vel_mov -= 0.01;
}

global.vel_mov = clamp(global.vel_mov, 0, 1);

y += global.vel_mov * 10;