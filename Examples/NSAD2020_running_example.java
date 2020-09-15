//Expected:SAT 

class array_odd{
   
    static int i,N, v;
    static int a[] ; 
    static void main() {
      N=Support.random();//size of array
      
      //Initialize array to only even values
      i=0;
      while(i<N)
      {
        //hint forall k, (0<=k && k<i) -> (a[k] %2 == 0);
        v = Support.random();
        a[i] = v*2;
        i=i+1;
      }
      
      //Increase each element by 1
      i=0;
      while(i<N)
      {
        //hint forall k, (0<=k && k<i) -> (a[k] %2 == 1);
        a[i] = a[i]+1;
        i=i+1;
      }
      
      //Assert that all elements are odd
      i=0;
      while(i<N)
      {
        //hint forall k, (0<=k && k<N) -> (a[k] %2 == 1);
        assert(a[i]%2==1);
        i=i+1; 
      }
    }
}
