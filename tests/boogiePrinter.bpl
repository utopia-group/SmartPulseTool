implementation ULTIMATE.init() returns (){
  $Ultimate##0:
    #NULL.base, #NULL.offset := 0, 0;
    #valid := #valid[0 := 0];
    ~maxSize~0 := 0;
    ~size~0 := 1;
    ~myAddr~0 := 0;
    ~myBalance~0 := 0;
    ~myWalletBalance~0 := 0;
    ~balance~0.base, ~balance~0.offset := 0, 0;
    ~walletStorage~0.base, ~walletStorage~0.offset := 0, 0;
    ~depositCalled~0 := 0;
    ~depositAddr~0 := -1;
    ~depositAmt~0 := 0;
    ~withdrawCalled~0 := 0;
    ~withdrawAddr~0 := -1;
    ~withdrawAmt~0 := 0;
    ~myFallbackCalled~0 := 0;
    ~myFallbackAmt~0 := 0;
    ~myFallbackCompleted~0 := 0;
    ~walletBalance~0 := 0;
    return;
}

implementation ULTIMATE.start() returns (){
  $Ultimate##0:
    call ULTIMATE.init();
    call main();
    return;
}

implementation myFallback(#in~addr : int, #in~msg_value : int) returns (){
    var #t~mem0 : int;
    var ~addr : int;
    var ~msg_value : int;

  $Ultimate##0:
    ~addr := #in~addr;
    ~msg_value := #in~msg_value;
    ~myFallbackAmt~0 := ~msg_value;
    ~myFallbackCalled~0 := 1;
    ~myFallbackCalled~0 := 0;
    call #t~mem0 := read~int(~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    call write~int(#t~mem0 + ~msg_value, ~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    havoc #t~mem0;
    ~myFallbackCompleted~0 := 1;
    ~myFallbackCompleted~0 := 0;
    ~myFallbackAmt~0 := 0;
    return;
}

implementation otherFallback(#in~addr : int, #in~msg_value : int) returns (){
    var #t~mem1 : int;
    var ~addr : int;
    var ~msg_value : int;

  $Ultimate##0:
    ~addr := #in~addr;
    ~msg_value := #in~msg_value;
    call #t~mem1 := read~int(~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    call write~int(#t~mem1 + ~msg_value, ~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    havoc #t~mem1;
    return;
}

implementation deposit(#in~addr : int, #in~msg_value : int) returns (){
    var #t~mem2 : int;
    var #t~mem3 : int;
    var #t~mem4 : int;
    var ~addr : int;
    var ~msg_value : int;

  $Ultimate##0:
    ~addr := #in~addr;
    ~msg_value := #in~msg_value;
    ~depositAddr~0 := ~addr;
    ~depositAmt~0 := ~msg_value;
    ~depositCalled~0 := 1;
    ~depositCalled~0 := 0;
    assume 0 != (if (~walletBalance~0 + ~msg_value) % 4294967296 >= ~walletBalance~0 % 4294967296 then 1 else 0);
    call #t~mem2 := read~int(~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    goto $Ultimate##1, $Ultimate##2;
  $Ultimate##1:
    assume #t~mem2 % 4294967296 >= ~msg_value % 4294967296;
    havoc #t~mem2;
    call #t~mem3 := read~int(~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    call write~int(#t~mem3 - ~msg_value, ~balance~0.base, ~balance~0.offset + 4 * (~addr % 4294967296), 4);
    havoc #t~mem3;
    ~walletBalance~0 := ~walletBalance~0 + ~msg_value;
    call #t~mem4 := read~int(~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    call write~int(#t~mem4 + ~msg_value, ~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    havoc #t~mem4;
    goto $Ultimate##3;
  $Ultimate##2:
    assume !(#t~mem2 % 4294967296 >= ~msg_value % 4294967296);
    havoc #t~mem2;
    goto $Ultimate##3;
  $Ultimate##3:
    ~depositAddr~0 := -1;
    ~depositAmt~0 := 0;
    return;
}

implementation withdraw(#in~addr : int, #in~amt : int) returns (){
    var #t~mem5 : int;
    var #t~mem6 : int;
    var ~addr : int;
    var ~amt : int;

  $Ultimate##0:
    ~addr := #in~addr;
    ~amt := #in~amt;
    ~withdrawAmt~0 := ~amt;
    ~withdrawAddr~0 := ~addr;
    ~withdrawCalled~0 := 1;
    ~withdrawCalled~0 := 0;
    call #t~mem5 := read~int(~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    goto $Ultimate##1, $Ultimate##2;
  $Ultimate##1:
    assume #t~mem5 % 4294967296 >= ~amt % 4294967296;
    havoc #t~mem5;
    goto $Ultimate##3, $Ultimate##4;
  $Ultimate##3:
    assume ~walletBalance~0 % 4294967296 >= ~amt % 4294967296;
    goto $Ultimate##5, $Ultimate##6;
  $Ultimate##5:
    assume ~addr % 4294967296 == ~myAddr~0 % 4294967296;
    call myFallback(~addr, ~amt);
    goto $Ultimate##7;
  $Ultimate##6:
    assume !(~addr % 4294967296 == ~myAddr~0 % 4294967296);
    call otherFallback(~addr, ~amt);
    goto $Ultimate##7;
  $Ultimate##7:
    ~walletBalance~0 := ~walletBalance~0 - ~amt;
    call #t~mem6 := read~int(~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    call write~int(#t~mem6 - ~amt, ~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    havoc #t~mem6;
    goto $Ultimate##8;
  $Ultimate##4:
    assume !(~walletBalance~0 % 4294967296 >= ~amt % 4294967296);
    goto $Ultimate##8;
  $Ultimate##8:
    goto $Ultimate##9;
  $Ultimate##2:
    assume !(#t~mem5 % 4294967296 >= ~amt % 4294967296);
    havoc #t~mem5;
    goto $Ultimate##9;
  $Ultimate##9:
    ~withdrawAddr~0 := -1;
    ~withdrawAmt~0 := 0;
    return;
}

implementation getWalletBalance(#in~addr : int) returns (#res : int){
    var #t~mem7 : int;
    var ~addr : int;

  $Ultimate##0:
    ~addr := #in~addr;
    call #t~mem7 := read~int(~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~addr % 4294967296), 4);
    #res := #t~mem7;
    havoc #t~mem7;
    return;
}

implementation main() returns (){
    var #t~nondet8 : int;
    var #t~malloc9.base : int, #t~malloc9.offset : int;
    var #t~malloc10.base : int, #t~malloc10.offset : int;
    var #t~nondet12 : int;
    var #t~post11 : int;
    var #t~mem13 : int;
    var #t~ret14 : int;
    var #t~nondet15 : int;
    var #t~nondet16 : int;
    var #t~nondet17 : int;
    var #t~post18 : int;
    var #t~nondet19 : int;
    var ~addr~0 : int;
    var ~addUser~0 : int;
    var ~action~0 : int;
    var ~amt~0 : int;
    var ~i~0 : int;

  $Ultimate##0:
    ~maxSize~0 := 2;
    ~size~0 := 1;
    ~myAddr~0 := #t~nondet8;
    havoc #t~nondet8;
    call #t~malloc9.base, #t~malloc9.offset := #Ultimate.allocOnHeap(4 * ~maxSize~0);
    ~balance~0.base, ~balance~0.offset := #t~malloc9.base, #t~malloc9.offset;
    call #t~malloc10.base, #t~malloc10.offset := #Ultimate.allocOnHeap(4 * ~maxSize~0);
    ~walletStorage~0.base, ~walletStorage~0.offset := #t~malloc10.base, #t~malloc10.offset;
    ~depositCalled~0 := 0;
    ~depositAddr~0 := -1;
    ~depositAmt~0 := 0;
    ~withdrawCalled~0 := 0;
    ~withdrawAddr~0 := -1;
    ~withdrawAmt~0 := 0;
    ~myFallbackCalled~0 := 0;
    ~myFallbackAmt~0 := 0;
    ~myFallbackCompleted~0 := 0;
    ~walletBalance~0 := 0;
    assume 0 != (if ~size~0 % 4294967296 >= 1 then 1 else 0);
    assume 0 != (if ~size~0 % 4294967296 <= ~maxSize~0 % 4294967296 then 1 else 0);
    assume 0 != (if ~myAddr~0 % 4294967296 < ~size~0 % 4294967296 then 1 else 0);
    havoc ~i~0;
    ~i~0 := 0;
    goto $Ultimate##1;
  $Ultimate##1:
    goto $Ultimate##2, $Ultimate##3;
  $Ultimate##2:
    assume true;
    goto $Ultimate##4, $Ultimate##5;
  $Ultimate##4:
    assume !(~i~0 % 4294967296 < ~maxSize~0 % 4294967296);
    goto $Ultimate##6;
  $Ultimate##5:
    assume !!(~i~0 % 4294967296 < ~maxSize~0 % 4294967296);
    call write~int(#t~nondet12, ~balance~0.base, ~balance~0.offset + 4 * (~i~0 % 4294967296), 4);
    havoc #t~nondet12;
    call write~int(0, ~walletStorage~0.base, ~walletStorage~0.offset + 4 * (~i~0 % 4294967296), 4);
    goto Loop~0;
  Loop~0:
    #t~post11 := ~i~0;
    ~i~0 := 1 + #t~post11;
    havoc #t~post11;
    goto $Ultimate##1;
  $Ultimate##3:
    assume !true;
    goto $Ultimate##6;
  $Ultimate##6:
  $Ultimate##7:
    goto $Ultimate##8, $Ultimate##9;
  $Ultimate##8:
    assume true;
    goto Loop~1;
  Loop~1:
    goto $Ultimate##10, $Ultimate##11;
  $Ultimate##10:
    assume false;
    goto $Ultimate##12;
  $Ultimate##11:
    assume !false;
    call #t~mem13 := read~int(~balance~0.base, ~balance~0.offset + 4 * (~myAddr~0 % 4294967296), 4);
    ~myBalance~0 := #t~mem13;
    havoc #t~mem13;
    call #t~ret14 := getWalletBalance(~myAddr~0);
    ~myWalletBalance~0 := #t~ret14;
    havoc #t~ret14;
    ~action~0 := #t~nondet15;
    havoc #t~nondet15;
    ~amt~0 := #t~nondet16;
    havoc #t~nondet16;
    assume 0 != (if ~amt~0 % 4294967296 > 0 then 1 else 0);
    assume 0 != (if ~action~0 % 4294967296 < 4 then 1 else 0);
    goto $Ultimate##13, $Ultimate##14;
  $Ultimate##13:
    assume 0 == ~action~0 % 4294967296;
    call withdraw(~myAddr~0, ~amt~0);
    goto $Ultimate##15;
  $Ultimate##14:
    assume !(0 == ~action~0 % 4294967296);
    goto $Ultimate##16, $Ultimate##17;
  $Ultimate##16:
    assume 1 == ~action~0 % 4294967296;
    call deposit(~myAddr~0, ~amt~0);
    goto $Ultimate##18;
  $Ultimate##17:
    assume !(1 == ~action~0 % 4294967296);
    havoc ~addr~0;
    ~addUser~0 := (if #t~nondet17 % 4294967296 % 256 <= 127 then #t~nondet17 % 4294967296 % 256 else #t~nondet17 % 4294967296 % 256 - 256);
    havoc #t~nondet17;
    goto $Ultimate##19, $Ultimate##20;
  $Ultimate##19:
    assume ~addUser~0 > 0;
    ~addr~0 := ~size~0;
    #t~post18 := ~size~0;
    ~size~0 := 1 + #t~post18;
    havoc #t~post18;
    assume 0 != (if ~size~0 % 4294967296 <= ~maxSize~0 % 4294967296 then 1 else 0);
    goto $Ultimate##21;
  $Ultimate##20:
    assume !(~addUser~0 > 0);
    ~addr~0 := #t~nondet19;
    havoc #t~nondet19;
    assume 0 != (if ~addr~0 % 4294967296 < ~size~0 % 4294967296 then 1 else 0);
    assume 0 != (if ~addr~0 % 4294967296 != ~myAddr~0 % 4294967296 then 1 else 0);
    goto $Ultimate##21;
  $Ultimate##21:
    goto $Ultimate##22, $Ultimate##23;
  $Ultimate##22:
    assume 2 == ~action~0 % 4294967296;
    call withdraw(~addr~0, ~amt~0);
    goto $Ultimate##24;
  $Ultimate##23:
    assume !(2 == ~action~0 % 4294967296);
    goto $Ultimate##25, $Ultimate##26;
  $Ultimate##25:
    assume 3 == ~action~0 % 4294967296;
    call deposit(~addr~0, ~amt~0);
    goto $Ultimate##27;
  $Ultimate##26:
    assume !(3 == ~action~0 % 4294967296);
    goto $Ultimate##27;
  $Ultimate##27:
  $Ultimate##24:
  $Ultimate##18:
  $Ultimate##15:
    goto $Ultimate##7;
  $Ultimate##9:
    assume !true;
    goto $Ultimate##12;
  $Ultimate##12:
    return;
}

var ~maxSize~0 : int;

var ~size~0 : int;

var ~myAddr~0 : int;

var ~myBalance~0 : int;

var ~myWalletBalance~0 : int;

var ~balance~0.base : int, ~balance~0.offset : int;

var ~walletStorage~0.base : int, ~walletStorage~0.offset : int;

var ~depositCalled~0 : int;

var ~depositAddr~0 : int;

var ~depositAmt~0 : int;

var ~withdrawCalled~0 : int;

var ~withdrawAddr~0 : int;

var ~withdrawAmt~0 : int;

var ~myFallbackCalled~0 : int;

var ~myFallbackAmt~0 : int;

var ~myFallbackCompleted~0 : int;

var ~walletBalance~0 : int;

var #NULL.base : int, #NULL.offset : int;

var #valid : [int]int;

var #length : [int]int;

var #memory_int : [int,int]int;

var #StackHeapBarrier : int;

procedure __VERIFIER_error() returns ();
modifies ;

procedure __VERIFIER_assume() returns ();
modifies ;

procedure __VERIFIER_nondet_uint() returns (#res : int);
modifies ;

procedure __VERIFIER_nondet_char() returns (#res : int);
modifies ;

procedure __VERIFIER_assert() returns ();
modifies ;

procedure withdraw(#in~addr : int, #in~amt : int) returns ();
modifies ~withdrawAmt~0, ~withdrawAddr~0, ~withdrawCalled~0, ~walletBalance~0, #memory_int, ~myFallbackAmt~0, ~myFallbackCalled~0, ~myFallbackCompleted~0;

procedure myFallback(#in~addr : int, #in~msg_value : int) returns ();
modifies ~myFallbackAmt~0, ~myFallbackCalled~0, ~myFallbackCompleted~0, #memory_int;

procedure read~int(#ptr.base : int, #ptr.offset : int, #sizeOfReadType : int) returns (#value : int);
free requires 1 == #valid[#ptr.base];
free requires #sizeOfReadType + #ptr.offset <= #length[#ptr.base] && 0 <= #ptr.offset;
ensures #value == #memory_int[#ptr.base,#ptr.offset];
modifies ;

procedure write~int(#value : int, #ptr.base : int, #ptr.offset : int, #sizeOfWrittenType : int) returns ();
free requires 1 == #valid[#ptr.base];
free requires #sizeOfWrittenType + #ptr.offset <= #length[#ptr.base] && 0 <= #ptr.offset;
ensures #memory_int == old(#memory_int)[#ptr.base,#ptr.offset := #value];
modifies #memory_int;

procedure otherFallback(#in~addr : int, #in~msg_value : int) returns ();
modifies #memory_int;

procedure deposit(#in~addr : int, #in~msg_value : int) returns ();
modifies ~depositAddr~0, ~depositAmt~0, ~depositCalled~0, ~walletBalance~0, #memory_int;

procedure getWalletBalance(#in~addr : int) returns (#res : int);
modifies ;

procedure main() returns ();
modifies ~maxSize~0, ~size~0, ~myAddr~0, ~balance~0.base, ~balance~0.offset, ~walletStorage~0.base, ~walletStorage~0.offset, ~depositCalled~0, ~depositAddr~0, ~depositAmt~0, ~withdrawCalled~0, ~withdrawAddr~0, ~withdrawAmt~0, ~myFallbackCalled~0, ~myFallbackAmt~0, ~myFallbackCompleted~0, ~walletBalance~0, ~myBalance~0, ~myWalletBalance~0, #memory_int, #valid, #length;

procedure #Ultimate.allocOnHeap(~size : int) returns (#res.base : int, #res.offset : int);
ensures 0 == old(#valid)[#res.base];
ensures #valid == old(#valid)[#res.base := 1];
ensures 0 == #res.offset;
ensures 0 != #res.base;
ensures #StackHeapBarrier < #res.base;
ensures #length == old(#length)[#res.base := ~size];
modifies #valid, #length;

procedure ULTIMATE.init() returns ();
modifies #NULL.base, #NULL.offset, #valid, ~maxSize~0, ~size~0, ~myAddr~0, ~myBalance~0, ~myWalletBalance~0, ~balance~0.base, ~balance~0.offset, ~walletStorage~0.base, ~walletStorage~0.offset, ~depositCalled~0, ~depositAddr~0, ~depositAmt~0, ~withdrawCalled~0, ~withdrawAddr~0, ~withdrawAmt~0, ~myFallbackCalled~0, ~myFallbackAmt~0, ~myFallbackCompleted~0, ~walletBalance~0;

procedure ULTIMATE.start() returns ();
modifies #NULL.base, #NULL.offset, #valid, ~maxSize~0, ~size~0, ~myAddr~0, ~myBalance~0, ~myWalletBalance~0, ~balance~0.base, ~balance~0.offset, ~walletStorage~0.base, ~walletStorage~0.offset, ~depositCalled~0, ~depositAddr~0, ~depositAmt~0, ~withdrawCalled~0, ~withdrawAddr~0, ~withdrawAmt~0, ~myFallbackCalled~0, ~myFallbackAmt~0, ~myFallbackCompleted~0, ~walletBalance~0, #memory_int, #length;

procedure ULTIMATE.dealloc(~addr.base : int, ~addr.offset : int) returns ();
free ensures #valid == old(#valid)[~addr.base := 0];
modifies #valid;

