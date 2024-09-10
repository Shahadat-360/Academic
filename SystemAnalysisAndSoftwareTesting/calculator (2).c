#include <stdio.h>

int main() {
    int a, b;
    char operator, separator;
    double result;

    // Array to store each expression and their corresponding results
    char expressions[100][50]; // To store the formatted expressions with results
    int expr_count = 0; // Count of expressions

    printf("Enter a number,operand and then another number.After that enter equal sign or semicolon :\n");

    while (1) {
        // Input each expression in the format a operator b separator

        scanf("%d %c %d %c", &a, &operator, &b, &separator);

        // Perform the operation based on the operator
        switch (operator) {
            case '+':
                result = a + b;
                break;
            case '-':
                result = a - b;
                break;
            case '*':
                result = a * b;
                break;
            case '/':
                if (b != 0) {
                    result = (double)a / b;
                } else {
                    printf("Error: Division by zero!\n");
                    return 1;
                }
                break;
            case '%':
                if (b != 0) {
                    result = a % b;
                } else {
                    printf("Error: Modulo by zero!\n");
                    return 1;
                }
                break;
            default:
                printf("Invalid operator!\n");
                return 1;
        }

        // Format and store the expression result
        if (separator == ';') {
            sprintf(expressions[expr_count], "%d %c %d = %.2f", a, operator, b, result); // Store the expression with result
        } else if (separator == '=') {
            sprintf(expressions[expr_count], "%d %c %d = %.2f", a, operator, b, result); // Store the final expression with result
            expr_count++; // Make sure to count the final expression
            break; // Exit the loop after '=' is encountered
        } else {
            printf("Invalid input format. Please use ';' or '=' to separate expressions.\n");
            return 1;
        }

        expr_count++; // Increment the expression count
    }

    // Output all expressions at once after '=' is encountered
    for (int i = 0; i < expr_count; i++) {
        printf("%s\n", expressions[i]);
    }

    return 0;
}
