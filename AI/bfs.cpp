#include<bits/stdc++.h>
using namespace std;

const int Max = 1e5;
bool visited[Max] = {false};
void bfs(int src,vector<int>g[]){ 
    queue<int> q;
    q.push(src); 
    visited[src] = true; 
    while(!q.empty()){
        int cur = q.front(); 
        q.pop(); 
        for(auto child:g[cur]){ 
            if(visited[child]==false){
                cout << cur << "-->" << child << endl;
                q.push(child);
                visited[child] = true;
            }
        }
    }
}

int main(){
    int node, edges;
    cin >> node >> edges;
    vector<int> g[node + 1];
    while(edges--){
        int u, v;
        cin >> u >> v;
        g[u].push_back(v);
        g[v].push_back(u);
    }
    bfs(1, g);
    return 0;
}
