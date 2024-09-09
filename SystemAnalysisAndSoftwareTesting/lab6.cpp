#include <bits/stdc++.h>
using namespace std;

template <typename T>
T sum(T arr[], int size)
{
    T total = 0;
    int i = 0;
    do
    {
        total += arr[i];
        i++;
    } while (i < size);
    return total;
}

template <typename T>
double average(T arr[], int size)
{
    return sum(arr, size) / (double)size;
}

int main()
{
    int intArr[] = {1, 2, 3, 4, 6};
    float floatArr[] = {1.1f, 2.2f, 3.3f, 4.4f, 5.5f};
    double doubleArr[] = {1.1, 2.2, 3.3, 4.4, 5.5};

    int size = sizeof(intArr) / sizeof(intArr[0]);

    cout << "Sum of int array: " << sum(intArr, size) << endl;
    cout << "Sum of float array: " << sum(floatArr, size) << endl;
    cout << "Sum of double array: " << sum(doubleArr, size) << endl;
    cout << "Average of int array: " << average(intArr, size) << endl;
    cout << "Average of float array: " << average(floatArr, size) << endl;
    cout << "Average of double array: " << average(doubleArr, size) << endl;

    return 0;
}
