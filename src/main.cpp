#include "raylib.h"

int main() {
    InitWindow(800, 450, "raylib template");

    while(!WindowShouldClose()) {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("Hello World", 190, 200, 20, BLACK);
        EndDrawing();
    }
    return 0;
}