//#Safe
// Extremely simple example for Boogie LTL properties
// #LTLProperty: <>[]AP(x==0)

var x : int;

procedure dec() 
modifies x;
{
    x := x - 1;
    return;
}

procedure main()
modifies x;
{
  x := 3;
  call dec();
  call dec();
  call dec();

  while(true) {}
}
