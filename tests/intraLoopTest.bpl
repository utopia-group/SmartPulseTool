// #LTLProperty: <>[](AP(y > 0))

var x : int;
var y : int;

procedure main()
modifies x, y;
{
  var n : int;
  x := 0;
  y := 100;
  havoc n;

  while(x < n) {
    y := y - 5;
    x := x + 1;
  }

  //assume(n > 30);
  while(true){}
}
