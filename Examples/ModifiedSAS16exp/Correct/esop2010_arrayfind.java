//ESOP10 - Dillig & Dillig & Aiken
//

class array_find{
   
    static int i,N, pos, elem;
    static int a[] ; //= {1515,10,0,40};


    
    static void main() {
	i=0;
	N=Support.random();
	elem=Support.random();
	pos=0-1;
	
	while(i< N){
            //hint forall k, (k>=0 && k <i) -> (a[k] != elem);
	    if (a[i]==elem){
		pos=i;
		i=N+2;//exit loop!
	    }
	    i=i+1;
	}

        i=0;
        while(i<pos)
        {
          //hint forall k, (k>=0 && k <pos) -> (a[k] != elem);
          assert(a[i] !=elem);
          i=i+1;
        }
        assert(a[pos] == elem || pos == 0-1);
    }
}
