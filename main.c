#include <sqlite3.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

const char *const HELP_MESSAGE =
    "Track your work hours.\nJust say 'moroc hi' when you come to work, and "
    "say 'moroc bye' when you leave.\nIt shows how long you have worked on "
    "that day!";

void processHi() {
    time_t timer = time(NULL);
    struct tm *current_time = localtime(&timer);
    printf("You clocked in at: %d:%d\n", current_time->tm_hour,
           current_time->tm_min);
}

void processBye() {
    time_t timer = time(NULL);
    struct tm *current_time = localtime(&timer);
    printf("You clocked out at: %d:%d\n", current_time->tm_hour,
           current_time->tm_min);
}

int main(int argc, char **argv) {
    if ((argc <= 1) || (strcmp(argv[1], "--help") == 0)) {
        puts(HELP_MESSAGE);
        return 0;
    }
    const char *command = argv[1];
    if (strcmp(command, "hi") == 0) {
        processHi();
    } else if (strcmp(command, "bye") == 0) {
        processBye();
    } else {
        printf("Unknown command '%s'. Use 'moroc --help' to get help "
               "information.\n",
               command);
    }
    return 0;
}
