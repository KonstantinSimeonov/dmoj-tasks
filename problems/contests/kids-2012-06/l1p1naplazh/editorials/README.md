Тестовете можете да видите <a href="https://github.com/Minkov/judge-tasks/tree/master/problems/contests/kids-2012-06/l1p1naplazh">тук</a>

Примерно решение на C++:

```cpp
#include <iostream>
using namespace std;
int main ()
{
    int h1,m1,h2,m2,h3,m3,h4,m4,x1,y1,x2,y2;
    cin>>h1>>m1>>h2>>m2>>h3>>m3>>h4>>m4;
    x1=h1*60+m1;
    y1=h2*60+m2;
    x2=h3*60+m3;
    y2=h4*60+m4;
    if (y1<x2||y2<x1) cout<<"No"<<endl;
    else
    {
        if (x2>=x1&&x2<=y1)
        {
            if (y2<=y1)cout<<x2/60<<' '<<x2%60<<' '<<y2/60<<' '<<y2%60<<endl;
            else cout<<x2/60<<' '<<x2%60<<' '<<y1/60<<' '<<y1%60<<endl;
        }
        else
        {
            if (y2>=x1&&y2<=y1) cout<<x1/60<<' '<<x1%60<<' '<<y2/60<<' '<<y2%60<<endl;
            else cout<<x1/60<<' '<<x1%60<<' '<<y1/60<<' '<<y1%60<<endl;
        }
    }
    return 0;
}
```
