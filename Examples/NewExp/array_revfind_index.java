class array_revfind_index
{
  static int i,N, index, val;
  static int a[]; 
  static void main() 
  {
      i=N-1;
      index=N;
	    while(i>=0)
	    {
	      //hint forall k, (k>i && k<N) -> a[k] != val;
        if(a[i]==val)
        {
          index=i;
          i=0-1;
        }
        else
	        i=i-1;
	    }
	    if(index !=0-1)
	      assert(a[index]==val);
	    else
	      index=0-1;
	    i=N-1;
	    while(i>index)
	    {
	      assert(a[i]!=val);
	      i=i-1;
	    }
  }
}
