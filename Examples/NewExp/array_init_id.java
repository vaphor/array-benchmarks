class init_id
{
  static int i,N;
  static int a[]; 
  static void main() 
  {
    i=0;
	  while(i< N)
	  {
      //hint forall k, (0<=k && k<i) -> a[k] == k;
	    a[i]=i;
	    i=i+1;
	  }
	  i=0;
	  while(i < N)
	  {
      //hint forall k, (0<=k && k<N) -> a[k] == k;
	    assert(a[i]==i);
	    i=i+1;
	  }
  }
}
