//#termcomp16-someonesaidyes
//#termcomp16-someonesaidyes
typedef enum {false, true} bool;

extern int __VERIFIER_nondet_int(void);

int main() {
    int x, y;
    x = __VERIFIER_nondet_int();
    y = __VERIFIER_nondet_int();
    while ((x > 0) && (y > 0)) {
        if (x > y) {
            while (x > 0) {
                x = x - 1;
            }
        } else {
            while (y > 0) {
                y = y - 1;
            }
        }
    }
    return 0;
}
