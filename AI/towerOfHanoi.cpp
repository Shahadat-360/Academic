#include <bits/stdc++.h>
using namespace std;

void towerOfHanoi(int n, char source, char auxilary, char destination)
{
    if (n == 1)
        cout << "move disk 1 from " << source << " to " << destination << endl;
    else
    {
        towerOfHanoi(n - 1, source, destination, auxilary);
        cout << "move disk " << n << " from " << source << " to " << destination << endl;
        towerOfHanoi(n - 1, auxilary, source, destination);
    }
}
int main()
{
    int n;
    cin >> n;
    towerOfHanoi(n, 'A', 'B', 'C');
    return 0;
}