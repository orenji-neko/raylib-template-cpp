#include "raylib.h"

int main() {
    InitWindow(800, 450, "raylib template");

    while(!WindowShouldClose()) {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("the quick brown fox", 190, 200, 20, BLACK);
            DrawText("jumps over the lazy dog", 190, 200, 20, BLACK);
        EndDrawing();
    }
    return 0;
}