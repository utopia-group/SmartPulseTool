int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
goto loc_4;
loc_4:
 if (nondet_bool()) {
  goto loc_3;
 }
 goto end;
loc_CP_0:
 if (nondet_bool()) {
  v1 = -1+v1;
  goto loc_2;
 }
 goto end;
loc_2:
 if (nondet_bool()) {
  if (!( 1+v1 <= 100 )) goto end;
  goto loc_1;
 }
 if (nondet_bool()) {
  if (!( 101 <= v1 )) goto end;
  goto loc_1;
 }
 goto end;
loc_1:
 if (nondet_bool()) {
  goto loc_CP_0;
 }
 goto end;
loc_3:
 if (nondet_bool()) {
  v1 = 300;
  goto loc_CP_0;
 }
 goto end;
end:
;
}
