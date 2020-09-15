//ESOP10 - Dillig & Dillig & Aiken
//

class array_append{
   
    static int i,Na,Nb;
    static int a[] = {1,1515,10,0,0,0,0};
    static int b[] = {12,42};
    
    static void main() {
	Na=Support.random();//size of array a
        Nb=Support.random();//size of array b
	
        //Append array b to array a
	i=Na;
	while(i < Na+Nb){
            //hint forall k, (Na<=k && k < i) -> (a[k] == b[k-Na]);
	    a[i]=b[i - Na];
	    i=i+1;
	}
        //hint forall k, (Na<=k && k < Na+Nb) -> (a[k] == b[k-Na]);
        //Check values of array a
        i=Na;
	while(i < Na+Nb){
           //hint forall k, (Na<=k && k < Na+Nb) -> (a[k] == b[k-Na]);
           assert(a[i] == b[i-Na]);
           i=i+1;
	}
    }
}
