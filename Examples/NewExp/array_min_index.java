class array_min
{
  static int i,N, min;
  static int a[]; 
  static void main() 
  {
      i=0;
      min=0;
	    while(i< N)
	    {
	      //hint forall k, (k>=0 && k<i) ->a[min] <= a[k];
        if(a[i]<a[min])
          min=i;
	      i=i+1;
	    }
	    i=0;
	    while(i < N)
	    {
	      //hint forall k, (k>=0 && k<N) -> a[min] <= a[k];
	      assert(a[min]<=a[i]);
	      i=i+1;
	    }
  }
}
