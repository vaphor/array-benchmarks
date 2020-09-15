class array_copyodd_buggy{

    static int i,j,size;
    static int a[];
    static int a_copy[] ;

    
    static void main() {
	i=1;
	j=0;
	size = Support.random();

	while(i< size){
	    a_copy[i] = a[i];
	    i=i+2;
	    j=j+1;
	}

	i=0;
	while(i< size){
	    assert (a_copy[i] == a[j]);
	    i=i+1;
	}
    }
}
