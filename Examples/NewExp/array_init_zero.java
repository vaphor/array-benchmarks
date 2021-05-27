class init_zero
{
  static int i,N;
  static int a[]; 
  static void main() 
  {
    i=0;
	  while(i< N)
	  {
      //hint forall k, (0<=k && k<i) -> a[k] == 0;
	    a[i]=0;
	    i=i+1;
	  }
	  i=0;
	  while(i < N)
	  {
      //hint forall k, (0<=k && k<N) -> a[k] == 0;
	    assert(a[i]==0);
	    i=i+1;
	  }
  }
}
