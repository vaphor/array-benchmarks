class array_max
{
  static int i,N, max;
  static int a[]; 
  static void main() 
  {
    if(N>1)
    {
      i=0;
      max=a[0];
	    while(i< N)
	    {
	      //hint forall k, (k>=0 && k<i) -> max >= a[k];
        if(a[i]>max)
          max=a[i];
	      i=i+1;
	    }
	    i=0;
	    while(i < N)
	    {
	      //hint forall k, (k>=0 && k<N) -> max >= a[k];
	      assert(max>=a[i]);
	      i=i+1;
	    }
    }
  }
}
