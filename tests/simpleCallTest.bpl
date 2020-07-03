// #LTLProperty: [](AP(checkCalled) ==> <>(AP(checkSuccess)))

var length : int;
var gas : int;
var checkCalled : bool;
var checkSuccess : bool;

procedure add() 
    modifies length, gas, checkSuccess;
{
    length := length + 1;
    gas := gas - length;

    if(gas <= 0) {
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
        gas := 20;

        checkCalled := true;
        checkCalled := false;
        call add();
    }
}

