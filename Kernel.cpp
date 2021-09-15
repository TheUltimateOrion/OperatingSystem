extern "C" void _start() {
    int* video_memory = (int*)0xb8000;
    *video_memory = 0x1f651f48;
    video_memory++;
    *video_memory = 0x1f6c1f6c;
    video_memory++;
    *video_memory = 0x1f2c1f6f;
    video_memory++;
    *video_memory = 0x1f571f20;
    video_memory++;
    *video_memory = 0x1f721f6f;
    video_memory++;
    *video_memory = 0x1f641f6c;
    video_memory++;
    *video_memory = 0x1f201f21;
    return;
}