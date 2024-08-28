#include <bits/stdc++.h>
using namespace std;

int n = 4;
int dist[10][10] = {
    {0, 20, 42, 25},
    {20, 0, 30, 34},
    {42, 30, 0, 10},
    {25, 34, 10, 0}};

int visited_all = (1 << n) - 1;
int dp[16][4];
int tsp(int mask, int pos)
{
    if (visited_all == mask)
        return dist[pos][0];
    int Ans = INT_MAX;
    if (dp[mask][pos] != -1)
    {
        return dp[mask][pos];
    }
    for (int city = 0; city < n; city++)
    {
        if ((mask & (1 << city)) == 0)
        {
            int newAns = dist[pos][city] + tsp(mask | (1 << city), city);
            Ans = min(newAns, Ans);
        }
    }
    return dp[mask][pos] = Ans;
}
int main()
{
    for (int i = 0; i < (1 << n); i++)
    {
        for (int j = 0; j < n; j++)
        {
            dp[i][j] = -1;
        }
    }
    cout << "minimum cost" << tsp(1, 0) << endl;
}