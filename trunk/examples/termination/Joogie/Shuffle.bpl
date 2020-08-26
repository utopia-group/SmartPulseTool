type ref;
type realVar;
type classConst;
// type Field x;
// var $HeapVar : <x>[ref, Field x]x;

const unique $null : ref ;
const unique $intArrNull : [int]int ;
const unique $realArrNull : [int]realVar ;
const unique $refArrNull : [int]ref ;

const unique $arrSizeIdx : int;
var $intArrSize : [int]int;
var $realArrSize : [realVar]int;
var $refArrSize : [ref]int;

var $stringSize : [ref]int;

//built-in axioms 
axiom ($arrSizeIdx == -1);

//note: new version doesn't put helpers in the perlude anymore//Prelude finished 



var int$IntList$value0 : Field int;
var IntList$IntList$next254 : Field ref;
var java.lang.String$lp$$rp$$Random$args255 : [int]ref;
var int$Random$index0 : int;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorefarr($param00 : ref) returns (__ret : [int]ref);



// procedure is generated by joogie.
function {:inline true} $gtint(x : int, y : int) returns (__ret : int) {
if (x > y) then 1 else 0
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2231(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r019 : ref;
Block29:
	r019 := __this;
	 assert ($neref((r019), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r019));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
}


	 //  @line: 32
// <IntList: IntList createIntList()>
procedure IntList$IntList$createIntList$2229() returns (__ret : ref) {
var $r09 : ref;
var i08 : int;
var r111 : ref;
var i110 : int;
	 //  @line: 33
Block17:
	 //  @line: 33
	 call i110 := int$Random$random$2232();
	 //  @line: 36
	r111 := $null;
	 goto Block18;
	 //  @line: 38
Block18:
	 goto Block19, Block21;
	 //  @line: 38
Block19:
	 assume ($leint((i110), (0))==1);
	 goto Block20;
	 //  @line: 38
Block21:
	 //  @line: 38
	 assume ($negInt(($leint((i110), (0))))==1);
	 //  @line: 39
	 call i08 := int$Random$random$2232();
	 //  @line: 40
	$r09 := $newvariable((22));
	 assume ($neref(($newvariable((22))), ($null))==1);
	 assert ($neref(($r09), ($null))==1);
	 //  @line: 40
	 call void$IntList$$la$init$ra$$2228(($r09), (i08), (r111));
	 //  @line: 40
	r111 := $r09;
	 //  @line: 41
	i110 := $addint((i110), (-1));
	 goto Block18;
	 //  @line: 44
Block20:
	 //  @line: 44
	__ret := r111;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $addreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $gtreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $newvariable($param00 : int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


	 //  @line: 2
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2233()
  modifies int$Random$index0;
 {
	 //  @line: 3
Block31:
	 //  @line: 3
	int$Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $mulint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $leint(x : int, y : int) returns (__ret : int) {
if (x <= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $shlref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrefarray($param00 : [int]ref, $param11 : [int]ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftointarr($param00 : ref) returns (__ret : [int]int);



// procedure is generated by joogie.
function {:inline true} $ltref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 24
// <IntList: void <init>(int,IntList)>
procedure void$IntList$$la$init$ra$$2228(__this : ref, $param_0 : int, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
var r13 : ref;
var i02 : int;
Block16:
	r01 := __this;
	i02 := $param_0;
	r13 := $param_1;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 25
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 26
	$HeapVar[r01, int$IntList$value0] := i02;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 27
	$HeapVar[r01, IntList$IntList$next254] := r13;
	 return;
}


	 //  @line: 5
// <Random: int random()>
procedure int$Random$random$2232() returns (__ret : int)
  modifies $stringSize, int$Random$index0;
 {
var $i020 : int;
var $i325 : int;
var $i224 : int;
var $r121 : [int]ref;
var r022 : ref;
var $i123 : int;
	 //  @line: 6
Block30:
	 //  @line: 6
	$r121 := java.lang.String$lp$$rp$$Random$args255;
	 //  @line: 6
	$i020 := int$Random$index0;
	 assert ($geint(($i020), (0))==1);
	 assert ($ltint(($i020), ($refArrSize[$r121[$arrSizeIdx]]))==1);
	 //  @line: 6
	r022 := $r121[$i020];
	 //  @line: 7
	$i123 := int$Random$index0;
	 //  @line: 7
	$i224 := $addint(($i123), (1));
	 //  @line: 7
	int$Random$index0 := $i224;
	$i325 := $stringSize[r022];
	 //  @line: 8
	__ret := $i325;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// <Shuffle: void <init>()>
procedure void$Shuffle$$la$init$ra$$2456(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r026 : ref;
Block32:
	r026 := __this;
	 assert ($neref((r026), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r026));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 4
// <Shuffle: void main(java.lang.String[])>
procedure void$Shuffle$main$2457($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$Random$args255;
 {
var r027 : [int]ref;
var r234 : ref;
var $r131 : ref;
var $i032 : int;
var r335 : ref;
Block33:
	r027 := $param_0;
	 //  @line: 5
	java.lang.String$lp$$rp$$Random$args255 := r027;
	 //  @line: 6
	 call r234 := IntList$IntList$createIntList$2229();
	 //  @line: 7
	r335 := $null;
	 goto Block34;
	 //  @line: 9
Block34:
	 goto Block35, Block37;
	 //  @line: 9
Block35:
	 assume ($eqref((r234), ($null))==1);
	 goto Block36;
	 //  @line: 9
Block37:
	 //  @line: 9
	 assume ($negInt(($eqref((r234), ($null))))==1);
	 //  @line: 11
	$r131 := $newvariable((38));
	 assume ($neref(($newvariable((38))), ($null))==1);
	 assert ($neref((r234), ($null))==1);
	 //  @line: 11
	$i032 := $HeapVar[r234, int$IntList$value0];
	 assert ($neref(($r131), ($null))==1);
	 //  @line: 11
	 call void$IntList$$la$init$ra$$2228(($r131), ($i032), (r335));
	 //  @line: 11
	r335 := $r131;
	 assert ($neref((r234), ($null))==1);
	 //  @line: 12
	r234 := $HeapVar[r234, IntList$IntList$next254];
	 goto Block39;
	 //  @line: 17
Block36:
	 return;
	 //  @line: 13
Block39:
	 goto Block40, Block41;
	 //  @line: 13
Block40:
	 assume ($eqref((r234), ($null))==1);
	 goto Block34;
	 //  @line: 13
Block41:
	 //  @line: 13
	 assume ($negInt(($eqref((r234), ($null))))==1);
	 assert ($neref((r234), ($null))==1);
	 //  @line: 9
	 call r234 := IntList$IntList$reverse$2230((r234));
	 goto Block34;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $eqintarray($param00 : [int]int, $param11 : [int]int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negRef($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $lereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $nereal(x : realVar, y : realVar) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 48
// <IntList: IntList reverse()>
procedure IntList$IntList$reverse$2230(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r013 : ref;
var r217 : ref;
var r318 : ref;
var $r115 : ref;
var $i016 : int;
Block23:
	r013 := __this;
	 //  @line: 49
	r217 := $null;
	 //  @line: 50
	r318 := r013;
	 goto Block24;
	 //  @line: 52
Block24:
	 goto Block25, Block27;
	 //  @line: 52
Block25:
	 assume ($eqref((r318), ($null))==1);
	 goto Block26;
	 //  @line: 52
Block27:
	 //  @line: 52
	 assume ($negInt(($eqref((r318), ($null))))==1);
	 //  @line: 53
	$r115 := $newvariable((28));
	 assume ($neref(($newvariable((28))), ($null))==1);
	 assert ($neref((r318), ($null))==1);
	 //  @line: 53
	$i016 := $HeapVar[r318, int$IntList$value0];
	 assert ($neref(($r115), ($null))==1);
	 //  @line: 53
	 call void$IntList$$la$init$ra$$2228(($r115), ($i016), (r217));
	 //  @line: 53
	r217 := $r115;
	 assert ($neref((r318), ($null))==1);
	 //  @line: 54
	r318 := $HeapVar[r318, IntList$IntList$next254];
	 goto Block24;
	 //  @line: 58
Block26:
	 //  @line: 58
	__ret := r217;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

