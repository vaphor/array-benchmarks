// ESOP10 Dillig Dillig Aiken, adapted to simple java syntax.

class init_cte{

    static int i,N,c;
    static int a[] = {1515,10,2,40};
    
    static void main() {
	N=Support.random();
	c=Support.random();
	
        i=0;
	while(i< N){
            //hint forall k, (0<=k && k<i) -> a[k] == c;
	    a[i]=c;
	    i=i+1;
	}

	i=0;
	while(i < N){
            //hint forall k, (0<=k && k<N) -> a[k] == c;
	    assert(a[i]==c);
	    i=i+1;
	}
    }
}
