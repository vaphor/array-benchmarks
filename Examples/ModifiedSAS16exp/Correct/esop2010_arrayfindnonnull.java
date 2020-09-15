//ESOP10 - Dillig & Dillig & Aiken
//

class array_findfirstnonnull{
   
    static int i,N, pos;
    static int a[] = {0,0,0,1515,10,0,40};

    
    static void main() {
	N = Support.random();
	pos= 0- 1;
        i=0;
	while(i < N){
             //hint forall k, (k>=0 && k <i) -> (a[k] == 0);
	    if ( a[i]!=0){
		pos=i;
		i=N+2;//exit loop!
	    }
	    i=i+1;
	}
        i=0;
	while(i < pos)
        {
          //hint forall k, (k>=0 && k <pos) -> (a[k] == 0);
          assert(a[i]==0);
	  i=i+1;
        }
        assert(a[pos] != 0 || pos==0-1);
	
    }
}
