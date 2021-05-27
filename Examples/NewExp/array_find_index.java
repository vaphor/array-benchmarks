class array_find_index
{
  static int i,N, index, val;
  static int a[]; 
  static void main() 
  {
      i=0;
      index=0-1;
	    while(i< N)
	    {
	      //hint forall k, (k>=0 && k<i) -> a[k] != val;
        if(a[i]==val)
        {
          index=i;
          i=N;
        }
        else
	        i=i+1;
	    }
	    if(index !=0-1)
	      assert(a[index]==val);
	    else
	      index=N;
	    i=0;
	    while(i<index)
	    {
	      assert(a[i]!=val);
	      i=i+1;
	    }
  }
}
