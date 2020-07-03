//#Safe
// Extremely simple example for Boogie LTL properties
// #LTLProperty: <>[]AP(x==0)

var x : int;

procedure dec(a: int) returns (res: int)
{
    res := a - 1;
    return;
}

procedure main()
modifies x;
{
  x := 3;
  call x := dec(x);
  call x := dec(x);
  call x := dec(x);

  while(true) {}
}
