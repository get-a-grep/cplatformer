MAINFILE      = platformer
PLATFORM      = PLATFORM_DESKTOP
RAYLIB_PATH   = lib\raylib
SOURCE_PATH   = src

CFLAGS        = $(RAYLIB_PATH)\raylib.rc.data -s -static -O2 -std=c99 -Wall
INCLUDE_PATHS = -I$(RAYLIB_PATH) -Iexternal
LDFLAGS       = -lraylib -lopengl32 -lgdi32 -lwinmm
CC            = gcc

$(MAINFILE): $(SOURCE_PATH)\$(MAINFILE).c
	$(CC) -o $(MAINFILE).exe $(SOURCE_PATH)\$(MAINFILE).c $(CFLAGS) $(INCLUDE_PATHS) $(LDFLAGS) -D$(PLATFORM)