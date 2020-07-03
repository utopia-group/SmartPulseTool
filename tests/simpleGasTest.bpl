// #LTLProperty: [](AP(checkCalled) ==> <>(AP(checkSuccess)))

var length : int;
var gas : int;
var checkCalled : bool;
var checkSuccess : bool;

procedure add() 
    modifies length, gas;
{
    length := length + 1;
    gas := gas - 1;
}

procedure check() 
    modifies gas, checkSuccess;
{
    var i : int;
    i := 0;

    // y = 100 - x * 5
    while(i < length) {
        gas := gas - 5;
        i := i + 1;
    }

    if(gas < 0) {
        return;
    }

    checkSuccess := true;
    checkSuccess := false;
}

procedure main()
    modifies length, gas, checkCalled, checkSuccess;
{
    checkCalled := false;
    checkSuccess := false;
    length := 0;

    while(true) {
        gas := 100;

        if(*) {
            call add();
        }
        else {
            checkCalled := true;
            checkCalled := false;
            call check();
        }
    }
}

