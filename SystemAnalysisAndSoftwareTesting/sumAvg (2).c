#include <stdio.h>

// Function to calculate the sum of the array
int calculateSum(int arr[], int size) {
    int sum = 0;
    int i = 0;
    do {
        sum += arr[i];
        i++;
    } while (i < size);
    return sum;
}

// Function to calculate the average of the array
double calculateAverage(int arr[], int size) {
    int sum = calculateSum(arr, size); // Get the sum using the calculateSum function
    return (double)sum / size;
}

int main() {
    int n;

    // Input the size of the array
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Array size must be a positive integer.\n");
        return 1;
    }

    int arr[n]; // Declare an array of size n

    // Input elements of the array
    printf("Enter %d elements:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Calculate sum and average
    int sum = calculateSum(arr, n);
    double average = calculateAverage(arr, n);

    // Display results
    printf("Sum of the array elements: %d\n", sum);
    printf("Average of the array elements: %.2f\n", average);

    return 0;
}

