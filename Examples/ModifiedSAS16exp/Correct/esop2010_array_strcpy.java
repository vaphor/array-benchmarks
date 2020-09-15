//ESOP10 - Dillig & Dillig & Aiken
//modified into int array

class array_strcopy{
    static int i, l;
    static int source[] = {1515,10,0,40};
    static int dest[] ;

    
    static void main() {
	i=0;
	while(source[i]!=0) {
            //hint forall k, (0<=k && k<i) -> dest[k] == source[k];
	    dest[i] = source[i];
	    i=i+1;
	}
        //hint forall k, (0<=k && k<i) -> source[k] == dest[k];
	l=i;
        //hint forall k, (0<=k && k<l) -> source[k] == dest[k];
        i=0;
        //hint forall k, (0<=k && k<l) -> source[k] == dest[k];
        while(i<l)
	{
          //hint forall k, (0<=k && k<l) -> source[k] == dest[k];
	  assert (source[i]==dest[i]);
          i=i+1;
        }
	
    }
}
