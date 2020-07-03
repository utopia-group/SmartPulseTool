// #LTLProperty: [](AP(checkCalled) ==> <>(AP(checkSuccess)))

var gas : int;
var bound : int;
var checkCalled : bool;
var checkSuccess : bool;

procedure inc() 
    modifies bound;
{
    bound := bound + 1;
}

procedure check() 
    modifies gas, checkSuccess;
{
    var i : int;
    i := 0;

    while(i < bound) {
        gas := gas - 1;
        if(gas < 0) {
            return;
        }

        i := i + 1;
    }

    checkSuccess := true;
    checkSuccess := false;
    return;
}

procedure main() 
    modifies checkCalled, bound, gas, checkSuccess;
{
    bound := 0;

    while(*) {
        gas := 100;
        if(*) {
            call inc();
        }
        else {
            checkCalled := true;
            checkCalled := false;
            call check();
        }
    }
}

procedure ULTIMATE.start() 
    modifies checkCalled, bound, gas, checkSuccess;
{
    call main();
}
