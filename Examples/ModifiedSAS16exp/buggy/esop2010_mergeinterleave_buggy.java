//ESOP10 - Dillig & Dillig & Aiken
//

class array_mergeinterleave_buggy {
   
    static int i,size,modul;
    static int a[];
    static int b[];
    static int res[] ;
    
    static void main() {
	size=Support.random();
	
	i=0;
	while(i < size){
	    res[i]=a[i];
	    i=i+2;
	}

	i=1;
	while(i < size){
	    res[i]=b[i];
	    i=i+2;
	}
			
	k=Support.random(0,size);
	
	i=0;
	modul=1;
	while(i < size){
	    if (modul == 0){
		assert(res[i]==a[i]);
	    }
	    else {
		assert(res[i]==b[i]);
	    }
	    modul = 1-modul;
	    i=i+1;
	}
	
    }
}
