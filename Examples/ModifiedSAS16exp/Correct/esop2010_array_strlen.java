//ESOP10 - Dillig & Dillig & Aiken
//modified into int array


class array_strlen{
    // int array with mark=0
    static int i, l;
    static int source[] = {1515,10,0,100};

    
    static void main() {
	i=0;
	while( ! (source[i]==0) ) {
            //hint forall k, (0<=k && k<i) -> source[k] !=0;
	    i=i+1;
	}
	l=i;
	i=0;
	while( i < l){
            //hint forall k, (0<=k && k<l) -> source[k] !=0;
	    assert ( source[i] != 0 );
	    i=i+1;
	}
    }
}
