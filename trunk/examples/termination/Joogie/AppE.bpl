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



var java.lang.String$lp$$rp$$Random$args255 : [int]ref;
var int$Random$index0 : int;
var AppE$AppE$next254 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 35
// <AppE: void <init>(AppE)>
procedure void$AppE$$la$init$ra$$2232(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r119 : ref;
var r018 : ref;
Block35:
	r018 := __this;
	r119 := $param_0;
	 assert ($neref((r018), ($null))==1);
	 //  @line: 36
	 call void$java.lang.Object$$la$init$ra$$28((r018));
	 assert ($neref((r018), ($null))==1);
	 //  @line: 37
	$HeapVar[r018, AppE$AppE$next254] := r119;
	 return;
}


	 //  @line: 22
// <AppE: AppE createList()>
procedure AppE$AppE$createList$2230() returns (__ret : ref) {
var r115 : ref;
var $r014 : ref;
var i016 : int;
	 //  @line: 23
Block28:
	 //  @line: 23
	r115 := $null;
	 //  @line: 24
	 call i016 := int$Random$random$2234();
	 goto Block29;
	 //  @line: 25
Block29:
	 goto Block32, Block30;
	 //  @line: 25
Block32:
	 //  @line: 25
	 assume ($negInt(($leint((i016), (0))))==1);
	 //  @line: 26
	$r014 := $newvariable((33));
	 assume ($neref(($newvariable((33))), ($null))==1);
	 assert ($neref(($r014), ($null))==1);
	 //  @line: 26
	 call void$AppE$$la$init$ra$$2232(($r014), (r115));
	 //  @line: 26
	r115 := $r014;
	 //  @line: 27
	i016 := $addint((i016), (-1));
	 goto Block29;
	 //  @line: 25
Block30:
	 assume ($leint((i016), (0))==1);
	 goto Block31;
	 //  @line: 29
Block31:
	 //  @line: 29
	__ret := r115;
	 return;
}


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



	 //  @line: 4
// <AppE: void main(java.lang.String[])>
procedure void$AppE$main$2228($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$Random$args255;
 {
var $i04 : int;
var r13 : ref;
var r01 : [int]ref;
Block16:
	r01 := $param_0;
	 //  @line: 5
	java.lang.String$lp$$rp$$Random$args255 := r01;
	 //  @line: 6
	 call r13 := AppE$AppE$createList$2230();
	 //  @line: 7
	 call $i04 := int$Random$random$2234();
	 assert ($neref((r13), ($null))==1);
	 //  @line: 7
	 call void$AppE$appE$2229((r13), ($i04));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 42
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2235()
  modifies int$Random$index0;
 {
	 //  @line: 43
Block38:
	 //  @line: 43
	int$Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 45
// <Random: int random()>
procedure int$Random$random$2234() returns (__ret : int)
  modifies $stringSize, int$Random$index0;
 {
var $i225 : int;
var $i124 : int;
var r023 : ref;
var $i326 : int;
var $r122 : [int]ref;
var $i021 : int;
	 //  @line: 46
Block37:
	 //  @line: 46
	$r122 := java.lang.String$lp$$rp$$Random$args255;
	 //  @line: 46
	$i021 := int$Random$index0;
	 assert ($geint(($i021), (0))==1);
	 assert ($ltint(($i021), ($refArrSize[$r122[$arrSizeIdx]]))==1);
	 //  @line: 46
	r023 := $r122[$i021];
	 //  @line: 47
	$i124 := int$Random$index0;
	 //  @line: 47
	$i225 := $addint(($i124), (1));
	 //  @line: 47
	int$Random$index0 := $i225;
	$i326 := $stringSize[r023];
	 //  @line: 48
	__ret := $i326;
	 return;
}


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



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 40
// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2233(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r020 : ref;
Block36:
	r020 := __this;
	 assert ($neref((r020), ($null))==1);
	 //  @line: 41
	 call void$java.lang.Object$$la$init$ra$$28((r020));
	 return;
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



	 //  @line: 10
// <AppE: void appE(int)>
procedure void$AppE$appE$2229(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r28 : ref;
var i010 : int;
var $r39 : ref;
var $r16 : ref;
var r05 : ref;
Block17:
	r05 := __this;
	i010 := $param_0;
	 assert ($neref((r05), ($null))==1);
	 //  @line: 11
	$r16 := $HeapVar[r05, AppE$AppE$next254];
	 goto Block18;
	 //  @line: 11
Block18:
	 goto Block19, Block21;
	 //  @line: 11
Block19:
	 assume ($neref(($r16), ($null))==1);
	 goto Block20;
	 //  @line: 11
Block21:
	 //  @line: 11
	 assume ($negInt(($neref(($r16), ($null))))==1);
	 goto Block22;
	 //  @line: 19
Block20:
	 assert ($neref((r05), ($null))==1);
	 //  @line: 19
	$r28 := $HeapVar[r05, AppE$AppE$next254];
	 assert ($neref(($r28), ($null))==1);
	 //  @line: 19
	 call void$AppE$appE$2229(($r28), (i010));
	 return;
	 //  @line: 12
Block22:
	 goto Block25, Block23;
	 //  @line: 12
Block25:
	 //  @line: 12
	 assume ($negInt(($gtint((i010), (0))))==1);
	 return;
	 //  @line: 12
Block23:
	 assume ($gtint((i010), (0))==1);
	 goto Block24;
	 //  @line: 15
Block24:
	 //  @line: 15
	$r39 := $newvariable((26));
	 assume ($neref(($newvariable((26))), ($null))==1);
	 goto Block27;
	 //  @line: 15
Block27:
	 assert ($neref(($r39), ($null))==1);
	 //  @line: 15
	 call void$AppE$$la$init$ra$$2231(($r39));
	 assert ($neref((r05), ($null))==1);
	 //  @line: 15
	$HeapVar[r05, AppE$AppE$next254] := $r39;
	 //  @line: 17
	i010 := $addint((i010), (-1));
	 goto Block20;
}


	 //  @line: 31
// <AppE: void <init>()>
procedure void$AppE$$la$init$ra$$2231(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r017 : ref;
Block34:
	r017 := __this;
	 assert ($neref((r017), ($null))==1);
	 //  @line: 32
	 call void$java.lang.Object$$la$init$ra$$28((r017));
	 assert ($neref((r017), ($null))==1);
	 //  @line: 33
	$HeapVar[r017, AppE$AppE$next254] := $null;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



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



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

