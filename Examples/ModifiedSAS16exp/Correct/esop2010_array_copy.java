class array_copy{

    static int i,N;
    static int a[] = {1515,10,2,40};
    static int a_copy[] ;

    
    static void main() {

	N = Support.random();
	i=0;
	while(i< N){
            //hint forall k, (0<=k && k <i) -> (a[k] == a_copy[k]);
	    a_copy[i] = a[i];
	    i=i+1;
	}

	i=0;
	while(i< N){
            //hint forall k, (0<=k && k <N) -> (a[k] == a_copy[k]);
	    assert (a[i] == a_copy[i]);
	    i=i+1;
	}
    }
}
