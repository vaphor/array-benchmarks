class init_cte
{
  static int i,N, c;
  static int a[]; 
  static void main() 
  {
    i=0;
	  while(i< N)
	  {
      //hint forall k, (0<=k && k<i) -> a[k] == c;
	    a[i]=c;
	    i=i+1;
	  }
	  i=0;
	  while(i < N)
	  {
      //hint forall k, (0<=k && k<N) -> a[k] == c;
	    assert(a[i]==c);
	    i=i+1;
	  }
  }
}
