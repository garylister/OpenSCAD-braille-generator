
 

 
 test_words = "test this test";
 
 test_capitals = "Test 10";
 
 
 
 
/*echo( "length = ",len(test_string));

echo("first char = ", test_string[0]);

echo (ord(test_string[0]));

for ( i = [0 : len(test_string)-1])
echo(test_string[i]);

echo(search(" ", test_words, 4));

//space_positions = search(" ", test_words, 4);

echo (ord(test_words[4]));
*/

echo("upper case A = ",ord("A"));
echo("lower case a = ",ord("a"));
echo("upper case Z = ",ord("Z"));
echo("lower case z = ",ord("z"));
echo("number one = ", ord("1"));
echo("number zero = ", ord("0"));
echo("number nine = ", ord("9"));
echo("pound sign = ", ord("#"));
echo("space = ", ord(" "));

/*
//convert text characters into unicode numbers
//sets lower case letter vlaues to those of upper
//case letters so there is only one version of each 
//letter
for ( i = [0 : len(test_capitals)-1])
    echo(test_capitals[i]," = ",ord(test_capitals[i]))
   if (ord(test_capitals[i]) >= 90 && ord(test_capitals[i]) <= 122)  
       echo(ord(test_capitals[i])-32);
       else 
            echo(ord(test_capitals[i]));
 */           
/*
braille_a = [ [1,1],[1,1],[1,0]];
echo(braille_a);
echo(braille_a[0]);
echo(braille_a[0][0]);
*/

braille_characters = [  [[0,1],[0,1],[1,1]],  //#
[[1,0],[0,0],[0,0]],  //1
[[1,0],[1,0],[0,0]], //2
[[1,1],[0,0],[0,0]], //3
[[1,1],[0,1],[0,0]],  //4
[[1,0],[0,1],[0,0]],  //5
[[1,1],[1,0],[0,0]],  //6
[[1,1],[1,1],[0,0]],  //7
[[1,0],[1,1],[0,0]],  //8
[[0,1],[1,0],[0,0]],  //9
[[0,1],[1,1],[0,0]],  //0
[[1,0],[0,0],[0,0]],  //a
[[1,0],[1,0],[0,0]], //b
[[1,1],[0,0],[0,0]], //c
[[1,1],[0,1],[0,0]],  //d
[[1,0],[0,1],[0,0]],  //e
[[1,1],[1,0],[0,0]],  //f
[[1,1],[1,1],[0,0]],  //g
[[1,0],[1,1],[0,0]],  //h
[[0,1],[1,0],[0,0]],  //i
[[0,1],[1,1],[0,0]],  //j
[[1,0],[0,0],[1,0]], //k
[[1,0],[1,0],[1,0]], //l
[[1,1],[0,0],[1,0]], //m
[[1,1],[0,1],[1,0]], //n
[[1,0],[0,1],[1,0]], //o
[[1,1],[1,0],[1,0]], //p
[[1,1],[1,1],[1,0]],  //q
[[1,0],[1,1],[1,0]], //r
[[0,1],[1,0],[1,0]], //s
[[0,1],[1,1],[1,0]], //t
[[1,0],[0,0],[1,1]], //u
[[1,0],[1,0],[1,1]], //v
[[0,1],[1,1],[0,1]], //w
[[1,1],[0,0],[1,1]], //x
[[1,1],[0,1],[1,1]], //y
[[1,0],[0,1],[1,1]], //z
[[0,0],[0,0],[0,0]]]; //space

braille_refs = [ 35,48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90, 32];
   
/*   
//  echo(braille_characters);
echo(braille_characters[24]);
echo(len(braille_characters[24]));
echo(test_capitals[0]);
echo(ord(test_capitals[0]));
echo(search(ord(test_capitals[0]), braille_refs));
echo(braille_characters[search(ord(test_capitals[0]), braille_refs)[0]]);
//echo(braille_characters[0][0]);     
*/
       
 test_string = "Test space";   
  
 
for ( h = [0 : len(test_string)-1])
{ 
 //    translate([h*.2, 0,0])   
 //  c = 0;
//  echo(test_string[h]," = ",ord(test_string[h]))
 //  echo("test string length ",len(test_string)-1)
   if (ord(test_string[h]) >= 90 && ord(test_string[h]) <= 122)  
   {
       for ( i = [0:len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1])
  //       echo("length ", len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1)
   //      echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j])
             if(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j] == 1)
                 color("yellow")
//                 echo("h = ", h, " i = ", i, " j = ", j)
              translate([h*5.1, 0,0]) 
                 translate([(h+j)*2.5, (i)*-2.5,0])
          //          sphere(.8, $fn=20);
                        %cylinder(h=10, r=.8, $fn=8);
         }
          
   else if
       
           (ord(test_string[h]) >= 48 && ord(test_string[h]) <= 57)  
   {
       for ( i = [0:len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1])
  //       echo("length ", len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1)
   //      echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j])
             if(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j] == 1)
                 color("yellow")
//                 echo("h = ", h, " i = ", i, " j = ", j)
             translate([h*5.1, 0,0]) 
                 translate([(h+j)*2.5, (i)*-2.5,0])
          //          sphere(.8, $fn=20);
                        %cylinder(h=10, r=.8, $fn=8);
         }
          
   else 
   {
       for ( i = [0:len(braille_characters[search(ord(test_string[h]), braille_refs)[0]])-1])
//         echo("length ", len(braille_characters[search(ord(test_string[h]), braille_refs)[0]])-1)
//         echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h]), braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(test_string[h]), braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h]), braille_refs)[0]][i][j])
             if(braille_characters[search(ord(test_string[h]), braille_refs)[0]][i][j] == 1)
                 color("yellow")
 //               echo("h = ", h, " i = ", i, " j = ", j)
            translate([h*5.1, 0,0]) 
                 translate([(h+j)*2.5, (i)*-2.5,0])
          //          sphere(.8, $fn=20);
                        %cylinder(h=10, r=.8, $fn=8);

         }
     }



// spaceing test references
 for (i= [0:10])     
 translate([i*2*7.6, -1.5,0])
     square([7.6, 3]);


  /*     
 for ( i = [0:len(braille_a)-1])
     for (j = [0:1])
//         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
     if(braille_a[i][j] == 1)
         color("yellow")
         translate([j*2.5, i*-2.5,0])
  //          sphere(.8, $fn=20);
                cylinder(h=10, r=.8);
 */    
  

//sphere(.8, $fn=20);
 //   translate([2.340, 0 ,0])
 //       sphere(.8, $fn=20);
   // translate([0, -2.340, 0])
 //       sphere(.8, $fn=20);
 //   translate([2.340, -2.340, 0])
 //       sphere(.8, $fn=20);