class array_min
{
  static int i,N, min;
  static int a[]; 
  static void main() 
  {
    if(N>1)
    {
      i=0;
      min=a[0];
	    while(i< N)
	    {
	      //hint forall k, (k>=0 && k<i) -> min <= a[k];
        if(a[i]<min)
          min=a[i];
	      i=i+1;
	    }
	    i=0;
	    while(i < N)
	    {
	      //hint forall k, (k>=0 && k<N) -> min <= a[k];
	      assert(min<=a[i]);
	      i=i+1;
	    }
	  }
  }
}
