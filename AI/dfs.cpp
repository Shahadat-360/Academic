#include<bits/stdc++.h>
using namespace std;

const int Max = 1e5;
bool visited[Max] = {false};
void dfs(int v,vector<int>g[]){
    visited[v] = true;
    cout << "-->" << v;
    for(auto child:g[v]){
        if(visited[child]==false)
            dfs(child, g);
    }
}

int main(){
    int nodes, edges;
    cin >> nodes >> edges;
    vector<int> g[nodes + 1];
    while(edges--){
        int u, v;
        cin >> u >> v;
        g[u].push_back(v);
        g[v].push_back(u);
    }
    cout << "start";
    dfs(2, g);
    return 0;
}