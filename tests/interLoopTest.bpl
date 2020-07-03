// #LTLProperty: <>[](AP(y > 0))

var x : int;
var y : int;

procedure test(n: int) 
modifies x, y;
{
  // y = 100 - x * 5
  while(x < n) {
    y := y - 5;
    x := x + 1;
  }
}


procedure main()
modifies x, y;
{
  var n : int;
  x := 0;
  y := 100;
  havoc n;
  call test(n);

  //assume(n > 30);
  while(true){}
}

