#include <iostream>
using namespace std;
int main()
{int num,e,d,s,v1,v2,v3,v4,maxv;
  cin>>num;
  e=num%10;
  d=num/10%10;
  s=num/100;
  v1=s*d*e;
  v2=s+d*e;
  v3=s*d+e;
  v4=s+d+e;
  maxv=v1;
  if(maxv<v2)maxv=v2;
  if(maxv<v3)maxv=v3;
  if(maxv<v4)maxv=v4;
  cout<<maxv<<endl;
 return 0;
}
