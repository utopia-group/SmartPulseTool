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



var int$AlternatingGrowReduce2.Random$index0 : int;
var java.lang.String$lp$$rp$$AlternatingGrowReduce2.Random$args255 : [int]ref;
var AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$next254 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 6
// <AlternatingGrowReduce2.AlternatingGrowReduce2: void main(java.lang.String[])>
procedure void$AlternatingGrowReduce2.AlternatingGrowReduce2$main$2228($param_0 : [int]ref)
  modifies java.lang.String$lp$$rp$$AlternatingGrowReduce2.Random$args255, $stringSize;
 {
var r01 : [int]ref;
var $i02 : int;
var r27 : ref;
var $r16 : ref;
var i18 : int;
Block16:
	r01 := $param_0;
	 //  @line: 7
	java.lang.String$lp$$rp$$AlternatingGrowReduce2.Random$args255 := r01;
	 //  @line: 8
	 call $i02 := int$AlternatingGrowReduce2.Random$random$2232();
	 //  @line: 8
	 call r27 := AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$createList$2230(($i02));
	 //  @line: 10
	i18 := 0;
	 goto Block17;
	 //  @line: 11
Block17:
	 goto Block18, Block20;
	 //  @line: 11
Block18:
	 assume ($eqref((r27), ($null))==1);
	 goto Block19;
	 //  @line: 11
Block20:
	 //  @line: 11
	 assume ($negInt(($eqref((r27), ($null))))==1);
	 goto Block21;
	 //  @line: 25
Block19:
	 return;
	 //  @line: 12
Block21:
	 goto Block22, Block24;
	 //  @line: 12
Block22:
	 assume ($neint((i18), (0))==1);
	 goto Block23;
	 //  @line: 12
Block24:
	 //  @line: 12
	 assume ($negInt(($neint((i18), (0))))==1);
	 assert ($neref((r27), ($null))==1);
	 //  @line: 13
	r27 := $HeapVar[r27, AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$next254];
	 goto Block25;
	 //  @line: 14
Block23:
	 goto Block26, Block28;
	 //  @line: 20
Block25:
	 //  @line: 20
	i18 := $addint((i18), (1));
	 goto Block34;
	 //  @line: 14
Block26:
	 assume ($neint((i18), (1))==1);
	 goto Block27;
	 //  @line: 14
Block28:
	 //  @line: 14
	 assume ($negInt(($neint((i18), (1))))==1);
	 goto Block29;
	 //  @line: 21
Block34:
	 goto Block36, Block35;
	 //  @line: 16
Block27:
	 goto Block31, Block32;
	 //  @line: 15
Block29:
	 //  @line: 15
	$r16 := $newvariable((30));
	 assume ($neref(($newvariable((30))), ($null))==1);
	 assert ($neref(($r16), ($null))==1);
	 //  @line: 15
	 call void$AlternatingGrowReduce2.AlternatingGrowReduce2$$la$init$ra$$2229(($r16), (r27));
	 //  @line: 15
	r27 := $r16;
	 goto Block25;
	 //  @line: 21
Block36:
	 //  @line: 21
	 assume ($negInt(($leint((i18), (2))))==1);
	 //  @line: 22
	i18 := 0;
	 goto Block17;
	 //  @line: 21
Block35:
	 assume ($leint((i18), (2))==1);
	 goto Block17;
	 //  @line: 16
Block31:
	 assume ($leint((i18), (1))==1);
	 goto Block25;
	 //  @line: 16
Block32:
	 //  @line: 16
	 assume ($negInt(($leint((i18), (1))))==1);
	 goto Block33;
	 //  @line: 17
Block33:
	 assert ($neref((r27), ($null))==1);
	 //  @line: 17
	r27 := $HeapVar[r27, AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$next254];
	 goto Block25;
}


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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



	 //  @line: 26
// <AlternatingGrowReduce2.AlternatingGrowReduce2: void <init>(AlternatingGrowReduce2.AlternatingGrowReduce2)>
procedure void$AlternatingGrowReduce2.AlternatingGrowReduce2$$la$init$ra$$2229(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r09 : ref;
var r110 : ref;
Block37:
	r09 := __this;
	r110 := $param_0;
	 assert ($neref((r09), ($null))==1);
	 //  @line: 27
	 call void$java.lang.Object$$la$init$ra$$28((r09));
	 assert ($neref((r09), ($null))==1);
	 //  @line: 28
	$HeapVar[r09, AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$next254] := r110;
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


	 //  @line: 31
// <AlternatingGrowReduce2.AlternatingGrowReduce2: AlternatingGrowReduce2.AlternatingGrowReduce2 createList(int)>
procedure AlternatingGrowReduce2.AlternatingGrowReduce2$AlternatingGrowReduce2.AlternatingGrowReduce2$createList$2230($param_0 : int) returns (__ret : ref) {
var $r011 : ref;
var r216 : ref;
var i015 : int;
var $r114 : ref;
Block38:
	i015 := $param_0;
	 //  @line: 32
	$r011 := $newvariable((39));
	 assume ($neref(($newvariable((39))), ($null))==1);
	 assert ($neref(($r011), ($null))==1);
	 //  @line: 32
	 call void$AlternatingGrowReduce2.AlternatingGrowReduce2$$la$init$ra$$2229(($r011), ($null));
	 //  @line: 32
	r216 := $r011;
	 goto Block40;
	 //  @line: 33
Block40:
	 goto Block41, Block43;
	 //  @line: 33
Block41:
	 assume ($leint((i015), (0))==1);
	 goto Block42;
	 //  @line: 33
Block43:
	 //  @line: 33
	 assume ($negInt(($leint((i015), (0))))==1);
	 //  @line: 34
	$r114 := $newvariable((44));
	 assume ($neref(($newvariable((44))), ($null))==1);
	 assert ($neref(($r114), ($null))==1);
	 //  @line: 34
	 call void$AlternatingGrowReduce2.AlternatingGrowReduce2$$la$init$ra$$2229(($r114), (r216));
	 //  @line: 34
	r216 := $r114;
	 //  @line: 35
	i015 := $addint((i015), (-1));
	 goto Block40;
	 //  @line: 37
Block42:
	 //  @line: 37
	__ret := r216;
	 return;
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



	 //  @line: 4
// <AlternatingGrowReduce2.Random: void <clinit>()>
procedure void$AlternatingGrowReduce2.Random$$la$clinit$ra$$2233()
  modifies int$AlternatingGrowReduce2.Random$index0;
 {
	 //  @line: 5
Block47:
	 //  @line: 5
	int$AlternatingGrowReduce2.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 7
// <AlternatingGrowReduce2.Random: int random()>
procedure int$AlternatingGrowReduce2.Random$random$2232() returns (__ret : int)
  modifies int$AlternatingGrowReduce2.Random$index0, $stringSize;
 {
var $i323 : int;
var $r119 : [int]ref;
var $i222 : int;
var $i121 : int;
var $i018 : int;
var r020 : ref;
	 //  @line: 8
Block46:
	 //  @line: 8
	$r119 := java.lang.String$lp$$rp$$AlternatingGrowReduce2.Random$args255;
	 //  @line: 8
	$i018 := int$AlternatingGrowReduce2.Random$index0;
	 assert ($geint(($i018), (0))==1);
	 assert ($ltint(($i018), ($refArrSize[$r119[$arrSizeIdx]]))==1);
	 //  @line: 8
	r020 := $r119[$i018];
	 //  @line: 9
	$i121 := int$AlternatingGrowReduce2.Random$index0;
	 //  @line: 9
	$i222 := $addint(($i121), (1));
	 //  @line: 9
	int$AlternatingGrowReduce2.Random$index0 := $i222;
	$i323 := $stringSize[r020];
	 //  @line: 10
	__ret := $i323;
	 return;
}


	 //  @line: 2
// <AlternatingGrowReduce2.Random: void <init>()>
procedure void$AlternatingGrowReduce2.Random$$la$init$ra$$2231(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r017 : ref;
Block45:
	r017 := __this;
	 assert ($neref((r017), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r017));
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



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

