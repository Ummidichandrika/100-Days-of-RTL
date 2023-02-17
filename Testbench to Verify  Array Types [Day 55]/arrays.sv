module tb;
  //allocating associative array and assigning value to it 
    int   	array1 [int]; 	// An integer array with integer index
	int   	array2 [string]; // An integer array with string index
	string  array3 [string]; // A string array with string index
  
  //Dynamic Array Declaration
  bit [7:0] d_array1[];
  int       d_array2[];
  
  //Queue declaration
  string    queue_1[$]; //unbounded queue
  int  queue_2[$:2];  //bounded queue
  
  initial begin
  
  
 
      	// Initialize each  array with some values
    	array1 = '{ 1 : 22,
	            	6 : 34 };
	            
		array2 = '{ "Ross" : 100,
	            	"Joey" : 60 };
	            
		array3 = '{ "Apples" : "Oranges",
	            	"Pears" : "44" };
      
      	// Print each array
      $display ("array1 = %p", array1);
      $display ("array2 = %p", array2);
      $display ("array3 = %p", array3);
      
      //Dynamic Array
    
     $display("Before Memory Allocation");
    $display("\tSize of d_array1 %0d",d_array1.size());
    $display("\tSize of d_array2 %0d",d_array2.size());

    //memory allocation
    d_array1 = new[4]; 
    d_array2 = new[6]; 
    
    $display("After Memory Allocation");
    $display("\tSize of d_array1 %0d",d_array1.size());
    $display("\tSize of d_array2 %0d",d_array2.size());
    
    //Dynamic Array initialization
    d_array1 = {0,1,2,3};
    foreach(d_array2[j])  d_array2[j] = j;

    $display(" d_array1 Values are ");
    foreach(d_array1[i])   $display("\td_aaray1[%0d] = %0d",i, d_array1[i]);
    $display("---------------------------------");

    $display(" d_array2 Values are ");
    foreach(d_array2[i])   $display("\td_aaray2[%0d] = %0d",i, d_array2[i]);
    $display("---------------------------------");
    
    //Queue Initialisation
     queue_1 = {"Red","Blue","Green"};
     queue_2 = {7,3,1};
    
    //Size-Method
    $display(" Queue_1 size is %0d  ",queue_1.size());
    foreach(queue_1[i]) $display("\tqueue_1[%0d] = %0s",i,queue_1[i]);    
    $display(" Queue_2 size is %0d ",queue_2.size());
    foreach(queue_2[i]) 
      $display("\tqueue_2[%0d] = %0d",i,queue_2[i]);
    
    //Insert-Method
    queue_1.insert(1,"Orange");
    $display(" Queue_1 size  after inserting Orange is %0d ",queue_1.size());
    foreach(queue_1[i]) $display("\tqueue_2[%0d] = %0s",i,queue_1[i]);
    
    //Delete Method
    queue_2.delete(3);
    $display(" Queue_2 size after Delete is %0d  ",queue_2.size());
    foreach(queue_2[i])$display("\tqueue_2[%0d] = %0d",i,queue_2[i]);
     
    $display("Queue elements are,");
    $display("\tqueue = %p",queue_2);
  end
endmodule
