 #include "array_sort1.h"
int sort_without_reps(int *src, int n, int *dest){
	int *PtrSrc = src;
	int *PtrDest = dest;
	int check = 0;
	int i,k;
	int b = 0;
	for(i = 0; i<n; i++){
		for(k=0; k<b; k++){
			if(PtrSrc[i]==PtrDest[k]){
			check++;
			}
		}
		if(check==0){
			PtrDest[b] = PtrSrc[i];
			b++;
		}
		check = 0;
	}
	array_sort1(PtrDest, n);	
	return b;
}
