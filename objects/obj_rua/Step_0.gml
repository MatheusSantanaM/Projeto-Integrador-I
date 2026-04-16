if (keyboard_check(vk_up)) {
    image_speed += 0.01;
}
else if (keyboard_check(vk_down)) {
    image_speed -= 0.01;
}
else {
    image_speed -= 0.01;
}

image_speed = clamp(image_speed, 0, 1);