//ESOP10 - Dillig & Dillig & Aiken
//mmem copy = same as array copy

class array_memcopy{
   
    static int i,N;
    static int a[] = {1515,10,0,40};
    static int a_copy[] ;

    
    static void main() {
	N = Support.random();

	i=0;
	while(i< N){
            //hint forall k, (0<=k && k<i) -> a_copy[k] == a[k];
	    a_copy[i] = a[i];
	    i=i+1;
	}

	i=0;
	while(i< N){
            //hint forall k, (0<=k && k<N) -> a_copy[k] == a[k];
	    assert (a_copy[i]==a[i]);
	    i=i+1;
	}
	
    }
}
