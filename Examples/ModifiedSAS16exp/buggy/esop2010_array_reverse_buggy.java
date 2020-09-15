class array_reverse_buggy{

    static int i,k,size;
    static int a[];
    static int a_copy[] ;

    
    static void main() {
	i=0;
	size=Support.random();

	while(i< size){
	    a_copy[i] = a[i];
	    i=i+1;
	}

	i=0;
	while(i< size){
	    a[i] = a_copy[size-i-1];
	    i=i+1;
	}

	k=Support.random(0,size+1);
	assert (a_copy[size - 1 -k]==a[k]);
    }
}
