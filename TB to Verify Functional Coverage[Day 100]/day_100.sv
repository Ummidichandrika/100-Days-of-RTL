// Code your testbench here
module tb;
  bit [3:0] a;
  bit [3:0] b;
  bit [3:0] c;
  bit [4:0] d;
  bit [1:0] e;
  bit [2:0] f;
  bit [1:0] g;
  
  //covergroup with implicit bins 
  covergroup cg_1;
    option.per_instance =1;
    label_1 : coverpoint a;
    endgroup 
  
  covergroup cg_2;
    option.per_instance =1;
    label_1 : coverpoint a;
    label_2 : coverpoint b{
      bins b1={1};
      bins b2={[5:10]};
    }
    label_2_1 : coverpoint c{
     bins c1={15};
     bins c2={[11:13]};
    }
    //cross coverage  
    cross_1_2 : cross label_2,label_2_1;   
  endgroup
  
  //STATE BINS
  covergroup cg_3;
    option.per_instance =1;
    label_3 : coverpoint d{
      bins sep[]={10,15,30};
      bins fixed[2]={[0:5],10,15,30};
    }
  endgroup 

  //TRANSITION BINS
  covergroup cg_4;
    option.per_instance =1;
    label_4 : coverpoint e{
      bins tns[]= (1=>0);
      bins tns1= (1,2=>0,3);
      bins tns_1[]= (1,2=>0,3);
      bins tns2[]= (1,2=>0,3);
      bins tns3[]=([1:3]=>2);
      bins tns4[]=([1:3]=>1),(2=>3);
      bins tns5=([1:3]=>1),(2=>3);
    }
  endgroup
  
  //WILDCARD BINS 
  covergroup cg_5;
    option.per_instance =1;
    label_5 : coverpoint f{
      wildcard bins wldcd={3'b1??};
      wildcard bins wldcd1[]=(3'b10?=>3'b11?);
      wildcard bins wldcd2=(3'b10x=>3'b11x);
      wildcard bins wldcd3_even={3'b??0};
      wildcard bins wldcd4_odd={3'b??1};
    }
  endgroup
  
  //ignore bins  and illegal bins 
  covergroup cg_6;
    option.per_instance =1;
    label_6 : coverpoint g{
      ignore_bins g1={1,3};
      ignore_bins g2=(1=>2);
      illegal_bins g4={0,2};
    
    }
  endgroup
  
  cg_1 c1=new();
  cg_2 c2=new();
  cg_3 c3=new();
  cg_4 c4=new();
  cg_5 c5=new();
  cg_6 c6=new();
  initial begin 
    for (int i=0;i<100;i++) begin 
      {a,b,c,d,e,f,g}=$random;
    #1;
      $display("a=%0d b=%0d c=%0d d=%0d e=%0d f=%0d g=%0d",a,b,c,d,e,f,g);
      c1.sample();
      c2.sample();
      c3.sample();
      c4.sample();
      c5.sample();
      c6.sample();
    end
  end
  
endmodule
