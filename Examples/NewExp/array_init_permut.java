class init_permut
{
  static int i, j, N, tmp, randomval;
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
	  i=N-1;
	  //hint forall k l, (0<=k && k<N && 0<=l && l<N && k!=l) -> a[k] != a[l];
	  while(i>0)
	  {
      //hint forall k l, (0<=k && k<N && 0<=l && l<N && k!=l) -> a[k] != a[l];
      randomval=Support.random();
      tmp=a[i];
	    a[i]=a[randomval%i]; 
	    a[randomval%i]=tmp;
	    i=i-1;
	  }
	  i=0;
	  while(i < N)
	  {
	    j=0;
	    while(j<i)
	    {
	      assert(a[j]!=a[i]);
	      j=j+1;
	    }
	    i=i+1;
	  }
  }
}
