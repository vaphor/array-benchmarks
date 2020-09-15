// ESOP10 Dillig Dillig Aiken, adapted to simple java syntax.

class init_even{

    static int i,size,tmp,c,u;
    static int a[];
    
    static void main() {
	size = Support.random();
	i=0;
	while(i< size){
	   a[i]=1;
	   i=i+2;
	}

	i=1;
	while(i< size){ 
	    u=a[i];
	    assert(a[i]==1);
	    i=i+2;
	}
    }
}
