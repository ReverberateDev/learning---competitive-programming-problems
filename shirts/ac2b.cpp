#include <iostream>
#include <vector>
#include <algorithm>
#include <map>
#include <queue>
#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
ll mod=1e9+7;
vector<ll> fact, inv_fact;
const ll N=500001;
ll root[N],l[N],r[N],sz[N],col[N];
ll mod_exp(ll x, ll y, ll mod) {
    ll res = 1;
    while (y > 0) {
        if (y & 1) res = (res * x) % mod;
        x = (x * x) % mod;
        y >>= 1;
    }
    return res;
}

void precompute_factorials(ll max_n, ll mod) {
    fact.resize(max_n + 1, 1);
    inv_fact.resize(max_n + 1, 1);

    for (ll i = 2; i <= max_n; i++) {
        fact[i] = (fact[i - 1] * i) % mod;
    }
    inv_fact[max_n] = mod_exp(fact[max_n], mod - 2, mod); 
    for (ll i = max_n - 1; i >= 1; i--) {
        inv_fact[i] = (inv_fact[i + 1] * (i + 1)) % mod; 
    }
}
ll comb(ll n, ll r, ll mod) {
    if (r > n || r < 0) return 0; 
    return (fact[n] * inv_fact[r] % mod * inv_fact[n - r] % mod) % mod;
}
ll solve(ll i,ll j,string &a,string &b,string &c,vector<vector<ll> > &dp)
{
    if(i>=a.size() && j>=b.size())
    return 0;
    if(dp[i][j]!=-1)
    return dp[i][j];
    ll mn=1e9;
    if(i<a.size())
    mn=min(mn,(a[i]!=c[i+j])+solve(i+1,j,a,b,c,dp));
    if(j<b.size())
    mn=min(mn,(b[j]!=c[i+j])+solve(i,j+1,a,b,c,dp));
    return dp[i][j]=mn;
}
ll find(ll x)
{
    if(root[x]==x)
    return x;
    return root[x]=find(root[x]);
}
void solve() {
   ll n,q;
   cin>>n>>q;
   map<ll,ll> mp;
   for(ll i=1;i<=n;i++)
   {
    col[i]=root[i]=l[i]=r[i]=i;
    sz[i]=mp[i]=1;
   }
   while(q--)
   {
    ll type;
    cin>>type;
    if(type==1)
    {
        ll x,c;
        cin>>x>>c;
        x=find(x);
        mp[col[x]]-=sz[x];
        mp[c]+=sz[x];
        col[x]=c;
        if(l[x]!=1)
        {
            ll lr=find(l[x]-1);
            if(col[lr]==c)
            {
                root[lr]=x;
                l[x]=l[lr];
                sz[x]+=sz[lr];
            }
        }
        if(r[x]!=n)
        {
            ll rr=find(r[x]+1);
            if(col[rr]==c)
            {
                root[rr]=x;
                r[x]=r[rr];
                sz[x]+=sz[rr];
            }
        }
    }
    else
    {
        ll x;
        cin>>x;
        cout<<mp[x]<<endl;
    }
   }
}

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    ll max_n = 1e6;
    //precompute_factorials(max_n, mod);
    ll t=1;
    //cin >> t;
    while (t--) 
    solve();
    return 0;
}
