class array_max
{
  static int i,N, max;
  static int a[]; 
  static void main() 
  {
    if(N>1)
    {
      i=0;
      max=0;
	    while(i< N)
	    {
	      //hint forall k, (k>=0 && k<i) -> a[max] >= a[k];
        if(a[i]>a[max])
          max=i;
	      i=i+1;
	    }
	    i=0;
	    while(i < N)
	    {
	      //hint forall k, (k>=0 && k<N) -> a[max] >= a[k];
	      assert(a[max]>=a[i]);
	      i=i+1;
	    }
    }
  }
}
