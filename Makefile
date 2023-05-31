# Linux Configuration
CC = g++
CFLAGS =
CPPFLAGS = -Iinclude
LDFLAGS = -Llib/linux
LDLIBS = -lraylib

# Windows Configuration
CC_WIN = x86_64-w64-mingw32-g++
CFLAGS_WIN = -static -static-libgcc -static-libstdc++
CPPFLAGS_WIN = -Iinclude
LDFLAGS_WIN = -Llib/win64
LDLIBS_WIN = -lraylib -opengl32 -lgdi32 -lwinmm

# Source Files
SRC_DIRS = src
SRC_FILES := $(shell find $(SRC_DIRS) -name "*.cpp")

all: linux windows

linux: build/linux/app
build/linux/app: $(SRC_FILES)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $< $(LDLIBS) -o $@

windows: build/win64/app.exe
build/win64/app.exe: $(SRC_FILES)
	$(CC_WIN) $(CFLAGS_WIN) $(CPPFLAGS_WIN) $(LDFLAGS_WIN) $< $(LDLIBS_WIN) -o $@

.PHONY: clean
clean:
	rm -f build/linux/* build/win64/*