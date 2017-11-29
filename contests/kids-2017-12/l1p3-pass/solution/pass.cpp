
#include <iostream>
using namespace std;

int main()
{long long n,k;
 cin>>n>>k;

 int n1,n2,n3,n4,n5,n6;
 n6=n%10;
 n5=n/10%10;
 n4=n/100%10;
 n3=n/1000%10;
 n2=n/10000%10;
 n1=n/100000;

 long long x;
 x=n6*100000+n5*10000+n4*1000+n3*100+n2*10+n1;

 long long p=x/k + x%k;
 cout<<p<<endl;

  return 0;
}
