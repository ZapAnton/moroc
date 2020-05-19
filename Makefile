EXECUTABLE_NAME = moroc
BIN_DIRECTORY = bin
BUILD_DIRECTORY = build
RELEASE_DIRECTORY = release
BUILD_PATH = $(BIN_DIRECTORY)/$(BUILD_DIRECTORY)
RELEASE_PATH = $(BIN_DIRECTORY)/$(RELEASE_DIRECTORY)
COMPILER_FLAGS = -Wall -Werror -Wpedantic

.PHONY: make_build_dir
make_build_dir:
	mkdir -p $(BUILD_PATH)

.PHONY: make_build_dir
make_release_dir:
	mkdir -p $(RELEASE_PATH)

.PHONY: release
release: make_release_dir
	gcc $(COMPILER_FLAGS) *.c -O3 -o $(RELEASE_PATH)/$(EXECUTABLE_NAME) -l sqlite3

.PHONY: build
build: make_build_dir
	gcc $(COMPILER_FLAGS) *.c -o $(BUILD_PATH)/$(EXECUTABLE_NAME) -l sqlite3

.PHONY: run
run: build
	$(BUILD_PATH)/$(EXECUTABLE_NAME)

.PHONY: format
format:
	clang-format -i *.c

.PHONY: clean
clean:
	rm -rf $(BIN_DIRECTORY)
