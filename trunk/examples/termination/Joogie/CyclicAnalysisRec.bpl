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



var CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254 : Field ref;
var java.lang.String$lp$$rp$$CyclicAnalysisRec.Random$args255 : [int]ref;
var int$CyclicAnalysisRec.Random$index0 : int;


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



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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



	 //  @line: 2
// <CyclicAnalysisRec.Random: void <init>()>
procedure void$CyclicAnalysisRec.Random$$la$init$ra$$2233(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r028 : ref;
Block34:
	r028 := __this;
	 assert ($neref((r028), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r028));
	 return;
}


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


// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
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



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 15
// <CyclicAnalysisRec.CyclicAnalysisRec: int length()>
procedure int$CyclicAnalysisRec.CyclicAnalysisRec$length$2230(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r112 : ref;
var $i116 : int;
var $i015 : int;
var $r213 : ref;
var r011 : ref;
Block20:
	r011 := __this;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 16
	$r112 := $HeapVar[r011, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254];
	 goto Block21;
	 //  @line: 16
Block21:
	 goto Block24, Block22;
	 //  @line: 16
Block24:
	 //  @line: 16
	 assume ($negInt(($neref(($r112), ($null))))==1);
	 //  @line: 17
	__ret := 1;
	 return;
	 //  @line: 16
Block22:
	 assume ($neref(($r112), ($null))==1);
	 goto Block23;
	 //  @line: 17
Block23:
	 assert ($neref((r011), ($null))==1);
	 //  @line: 17
	$r213 := $HeapVar[r011, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254];
	 goto Block25;
	 //  @line: 17
Block25:
	 assert ($neref(($r213), ($null))==1);
	 //  @line: 17
	 call $i015 := int$CyclicAnalysisRec.CyclicAnalysisRec$length$2230(($r213));
	 //  @line: 17
	$i116 := $addint((1), ($i015));
	 //  @line: 17
	__ret := $i116;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 2
// <CyclicAnalysisRec.CyclicAnalysisRec: void <init>()>
procedure void$CyclicAnalysisRec.CyclicAnalysisRec$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
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


	 //  @line: 4
// <CyclicAnalysisRec.Random: void <clinit>()>
procedure void$CyclicAnalysisRec.Random$$la$clinit$ra$$2235()
  modifies int$CyclicAnalysisRec.Random$index0;
 {
	 //  @line: 5
Block36:
	 //  @line: 5
	int$CyclicAnalysisRec.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 20
// <CyclicAnalysisRec.CyclicAnalysisRec: void appendNewCyclicList(int)>
procedure void$CyclicAnalysisRec.CyclicAnalysisRec$appendNewCyclicList$2231(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var i018 : int;
var r120 : ref;
var r017 : ref;
Block26:
	r017 := __this;
	i018 := $param_0;
	 assert ($neref((r017), ($null))==1);
	 //  @line: 21
	 call r120 := CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$appendNewList$2232((r017), (i018));
	 assert ($neref((r120), ($null))==1);
	 //  @line: 22
	$HeapVar[r120, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254] := r017;
	 return;
}


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


	 //  @line: 6
// <CyclicAnalysisRec.CyclicAnalysisRec: void main(java.lang.String[])>
procedure void$CyclicAnalysisRec.CyclicAnalysisRec$main$2229($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$CyclicAnalysisRec.Random$args255, $HeapVar;
 {
var r02 : [int]ref;
var $i07 : int;
var $r23 : ref;
var $i18 : int;
var r14 : ref;
var $r46 : ref;
var $r35 : ref;

 //temp local variables 
var $freshlocal1 : int;
var $freshlocal0 : ref;

Block17:
	r02 := $param_0;
	 //  @line: 7
	java.lang.String$lp$$rp$$CyclicAnalysisRec.Random$args255 := r02;
	 //  @line: 8
	$r23 := $newvariable((18));
	 assume ($neref(($newvariable((18))), ($null))==1);
	 assert ($neref(($r23), ($null))==1);
	 //  @line: 8
	 call void$CyclicAnalysisRec.CyclicAnalysisRec$$la$init$ra$$2228(($r23));
	 //  @line: 8
	r14 := $r23;
	 //  @line: 9
	$r35 := $newvariable((19));
	 assume ($neref(($newvariable((19))), ($null))==1);
	 assert ($neref(($r35), ($null))==1);
	 //  @line: 9
	 call void$CyclicAnalysisRec.CyclicAnalysisRec$$la$init$ra$$2228(($r35));
	 assert ($neref((r14), ($null))==1);
	 //  @line: 9
	$HeapVar[r14, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254] := $r35;
	 assert ($neref((r14), ($null))==1);
	 //  @line: 10
	$r46 := $HeapVar[r14, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254];
	 //  @line: 10
	 call $i07 := int$CyclicAnalysisRec.Random$random$2234();
	 assert ($neref(($r46), ($null))==1);
	 //  @line: 10
	 call void$CyclicAnalysisRec.CyclicAnalysisRec$appendNewCyclicList$2231(($r46), ($i07));
	 //  @line: 11
	 call $i18 := int$CyclicAnalysisRec.Random$random$2234();
	 assert ($neref((r14), ($null))==1);
	 //  @line: 11
	 call $freshlocal0 := CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$appendNewList$2232((r14), ($i18));
	 assert ($neref((r14), ($null))==1);
	 //  @line: 12
	 call $freshlocal1 := int$CyclicAnalysisRec.CyclicAnalysisRec$length$2230((r14));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 7
// <CyclicAnalysisRec.Random: int random()>
procedure int$CyclicAnalysisRec.Random$random$2234() returns (__ret : int)
  modifies $stringSize, int$CyclicAnalysisRec.Random$index0;
 {
var $i233 : int;
var $i029 : int;
var $i334 : int;
var $r130 : [int]ref;
var r031 : ref;
var $i132 : int;
	 //  @line: 8
Block35:
	 //  @line: 8
	$r130 := java.lang.String$lp$$rp$$CyclicAnalysisRec.Random$args255;
	 //  @line: 8
	$i029 := int$CyclicAnalysisRec.Random$index0;
	 assert ($geint(($i029), (0))==1);
	 assert ($ltint(($i029), ($refArrSize[$r130[$arrSizeIdx]]))==1);
	 //  @line: 8
	r031 := $r130[$i029];
	 //  @line: 9
	$i132 := int$CyclicAnalysisRec.Random$index0;
	 //  @line: 9
	$i233 := $addint(($i132), (1));
	 //  @line: 9
	int$CyclicAnalysisRec.Random$index0 := $i233;
	$i334 := $stringSize[r031];
	 //  @line: 10
	__ret := $i334;
	 return;
}


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


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 29
// <CyclicAnalysisRec.CyclicAnalysisRec: CyclicAnalysisRec.CyclicAnalysisRec appendNewList(int)>
procedure CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$appendNewList$2232(__this : ref, $param_0 : int) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r326 : ref;
var $i124 : int;
var $r225 : ref;
var $r122 : ref;
var r021 : ref;
var i023 : int;
var $r427 : ref;
Block27:
	r021 := __this;
	i023 := $param_0;
	 //  @line: 30
	$r122 := $newvariable((28));
	 assume ($neref(($newvariable((28))), ($null))==1);
	 assert ($neref(($r122), ($null))==1);
	 //  @line: 30
	 call void$CyclicAnalysisRec.CyclicAnalysisRec$$la$init$ra$$2228(($r122));
	 assert ($neref((r021), ($null))==1);
	 //  @line: 30
	$HeapVar[r021, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254] := $r122;
	 goto Block29;
	 //  @line: 31
Block29:
	 goto Block32, Block30;
	 //  @line: 31
Block32:
	 //  @line: 31
	 assume ($negInt(($gtint((i023), (1))))==1);
	 assert ($neref((r021), ($null))==1);
	 //  @line: 32
	$r427 := $HeapVar[r021, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254];
	 //  @line: 32
	__ret := $r427;
	 return;
	 //  @line: 31
Block30:
	 assume ($gtint((i023), (1))==1);
	 goto Block31;
	 //  @line: 34
Block31:
	 assert ($neref((r021), ($null))==1);
	 //  @line: 34
	$r225 := $HeapVar[r021, CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$field254];
	 goto Block33;
	 //  @line: 34
Block33:
	 //  @line: 34
	$i124 := $subint((i023), (1));
	 assert ($neref(($r225), ($null))==1);
	 //  @line: 34
	 call $r326 := CyclicAnalysisRec.CyclicAnalysisRec$CyclicAnalysisRec.CyclicAnalysisRec$appendNewList$2232(($r225), ($i124));
	 //  @line: 34
	__ret := $r326;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

