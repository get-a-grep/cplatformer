MAINFILE      = platformer
PLATFORM      = PLATFORM_DESKTOP
RAYLIB_PATH   = lib\raylib

CFLAGS        = $(RAYLIB_PATH)\raylib.rc.data -s -static -O2 -std=c99 -Wall
INCLUDE_PATHS = -I$(RAYLIB_PATH) -Iexternal
LDFLAGS       = -lraylib -lopengl32 -lgdi32 -lwinmm
CC            = gcc

$(MAINFILE): $(MAINFILE).c
	$(CC) -o $(MAINFILE).exe $(MAINFILE).c $(CFLAGS) $(INCLUDE_PATHS) $(LDFLAGS) -D$(PLATFORM)