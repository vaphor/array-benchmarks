class array_swapandcopy{

    static int i,N;
    static int a[] = {5,6,7,8};
    static int b[] = {10,11,12,13};
    static int a_copy[] ;
    static int b_copy[] ;

    
    static void main() {
	N=Support.random();
        i=0;
	while (i<N) {
 //           //hint forall k, (0<=k && k<i) -> (a[k] ==a_copy[k] && b[k] ==b_copy[k]);
	    a_copy[i] = a[i];
            b_copy[i] = b[i];
	    i=i+1;
	}
	i=0;
	while (i<N) {
            //hint forall k, (0<=k && k<i) -> a_copy[k] == b[k];
            //hint forall k, (0<=k && k<i) -> b_copy[k] == a[k];
	    a_copy[i] = b[i];
	    b_copy[i] = a[i];
	    i=i+1;
	}

	i=0;
        while (i<N) {
          //hint forall k, (0<=k && k<N) -> a_copy[k] == b[k];
          //hint forall k, (0<=k && k<N) -> b_copy[k] == a[k];
	  assert(a[i]==b_copy[i]);
          assert(b[i]==a_copy[i]);
          i=i+1;
        }
	
    }
	
}
	
    


