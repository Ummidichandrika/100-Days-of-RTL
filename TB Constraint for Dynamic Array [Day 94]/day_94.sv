class ABC;
    rand bit[4:0] md_array [][];       // 2d array 
 // rand bit[4:0] md_array [][][];    // 3d array

  ////**************below code for 2d dimentional *************//
  
  constraint c_md_array {md_array.size inside {[1:5]};  
                         foreach (md_array[i]) {  md_array[i].size() inside {[3:5]};   // 1d 
                    //   foreach (md_array[i][j])  {  md_array[i][j] inside {[10:30]};}}}     between 10 to 30 elements enable these constraint
                         foreach (md_array[i][j])  {  md_array[i][j] ==i+j;}}}   //   to access conscustive elements 
    
                           
  
  ///**************below code for 3d dimentional***********//                        
/*                        
   constraint c_md_array {md_array.size inside {[1:5]};  
                         foreach (md_array[i]) {  md_array[i].size() inside {[3:5]};   // 1d 
                         foreach (md_array[i][j])  {  md_array[i][j].size() inside {[1:3]};  
                         foreach (md_array[i][j][k])  {  md_array[i][j][k] ==i+j+k;  } } }}
 
   */
  
                          
endclass
 
module tb;
 
  initial begin
    ABC abc = new;
    repeat(5)
      begin
    abc.randomize();
        /*
        foreach(abc.md_array[i,j]) 
        abc.md_array[i][j] = $random;
        foreach(abc.md_array[i,j])  
          $display("\td_aaray[%0d,%0d] = %0d",i,j, abc.md_array[i][j]);
          */
    $display ("md_array = %p", abc);
  end
  end
endmodule
