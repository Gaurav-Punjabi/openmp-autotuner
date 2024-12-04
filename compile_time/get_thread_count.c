#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define BUFFER_SIZE 128

// Function to escape shell arguments
void escapeShellArgument(const char* arg, char* escaped) {
    size_t i = 0, j = 0;
    while (arg[i] != '\0') {
        char c = arg[i];
        // Escape special shell characters
        if (c == '"' || c == '\'' || c == '\\' || c == ';' || c == '&' || c == '|') {
            escaped[j++] = '\\';  // Escape the special character
        }
        escaped[j++] = c;  // Add the character to the result
        i++;
    }
    escaped[j] = '\0';  // Null-terminate the string
}

// Function to get the thread count by invoking the Python script
int get_thread_count(const char *ir_file_content) {
    clock_t inference_start_time = clock();  // Start the timer

    // Dynamically allocate memory for the escaped content
    size_t escaped_content_len = strlen(ir_file_content) * 2 + 1;  // Max space needed for escape
    char* escaped_content = (char*)malloc(escaped_content_len);
    if (!escaped_content) {
        fprintf(stderr, "Memory allocation failed for escaped_content.\n");
        return -1;
    }

    escapeShellArgument(ir_file_content, escaped_content);

    // Dynamically allocate memory for the command string
    size_t command_len = strlen(escaped_content) + 128 + 1;  // 128 for Python script path and other parts
    char* command = (char*)malloc(command_len);
    if (!command) {
        free(escaped_content);
        perror("Memory allocation failed for command.\n");
        return -1;
    }
    snprintf(command, command_len, "python /WAVE/projects2/ycho_lab/gpunjabi/autotuning/model/svm/svm_inference.py \"%s\"", escaped_content);

    // Open a pipe to the Python script
    FILE *fp = popen(command, "r");
    free(escaped_content);  // Free escaped_content after use
    free(command);          // Free command after use

    if (!fp) {
        perror("Failed to open pipe for Python script.\n");
        return -1; // Return an error value if the script fails
    }

    // Buffer to store the output from the Python script
    char buffer[BUFFER_SIZE];
    int num_threads = -1;

    // Read the output of the Python script
    while (fgets(buffer, sizeof(buffer), fp) != NULL) {
        printf("\nBUFFER: %s", buffer);
        // Assuming the thread number is printed as the last output from the Python script
        sscanf(buffer, "%d", &num_threads);
    }

    // Close the process
    int status = pclose(fp);
    if (status == -1) {
        fprintf(stderr, "Failed to close pipe.\n");
    }

    // Calculate elapsed time
    clock_t inference_end_time = clock();
    double elapsed_time = ((double)(inference_end_time - inference_start_time)) / CLOCKS_PER_SEC * 1000.0;  // Convert to milliseconds

    fprintf(stderr, "\nTime taken by inference: %.2f ms\n", elapsed_time);

    // Return the number of threads or default to 4 if parsing fails
    return num_threads != -1 ? num_threads : 4;
}
