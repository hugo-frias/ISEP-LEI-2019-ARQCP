#define INT_BITS 32			// numero de bits de um inteiro

int activate_bits(int a, int left, int right) {
 
    int i;
    for (i = 1; i < INT_BITS - left; i++) {
        if (!(a & (1 << (left + i)))) {
        a ^= (1 << (left + i));
        }
    }

     for (i = 1; i < right + 1; i++) {
        if (!(a & (1 << (right - i)))) {
        a ^= (1 << (right - i));
        }
    }
    
    return a;
}
