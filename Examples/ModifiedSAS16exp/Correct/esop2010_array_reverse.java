class array_reverse{

    static int i,N;
    static int a[] = {1515,10,2,40};
    static int a_copy[] ;

    
    static void main() {
	N = Support.random();

        i=0;
	while(i< N){
            //hint forall k, (0<=k && k<i) -> a_copy[k] == a[k];
	    a_copy[i] = a[i];
	    i=i+1;
	}
	//reverse.
	i=0;
	while(i< N){
            //hint forall k, (0<=k && k<i) -> a_copy[N-k-1] == a[k];
	    a[i] = a_copy[N-i-1];
	    i=i+1;
	}
	//check
	i=0;
	while(i< N){
            //hint forall k, (0<=k && k<N) -> a_copy[N-k-1] == a[k];
	    assert(a[i] == a_copy[N-i-1]);
	    i=i+1;
	}

    }
}
