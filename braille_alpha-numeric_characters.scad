// website references used
  // https://www.brailleauthority.org/size-and-spacing-braille-characters
 // https://www.pharmabraille.com/pharmaceutical-braille/the-braille-alphabet/
// https://en.wikipedia.org/wiki/Braille
// https://symbl.cc/en/unicode/blocks/braille-patterns/
// https://www.brailleauthority.org/ueb/symbols_list.pdf
 
// https://www.ada.gov/law-and-regs/design-standards/2010-stds/
// https://www.access-board.gov/ada/guides/chapter-7-signs/
// US dot diameter 0.059 -0.063 in (1.5 - 1.6mm)
// US dist between dots in same cell (center to center)  0.90 - 0.100 in (2.3 - 2.5 mm)
// US dist between corresponding dots in adjacent cells (center to center)  0.241 - 0.300 in (6.1 - 7.6 mm)
// US dot height  0.025 - 0.037 in  (0.6 - 0.9 mm)
// US dist between corresponding dot from one cell directly below (center to center)  0.395 - 0.400 in (10 - 10.2 mm)

// https://www.legislation.gov.au/Details/F2010L00668/
// AUS dot height 1 - 1.5 mm
//AUS min letter spacing  2 mm
// AUS min word spacing  10 mm
// https://brailleaustralia.org/about-braille/physical-specifications-for-braille/
//AUS dist between dots in same cell (center to center)   (2.3 - 2.5 mm)
// AUS dist between corresponding dots in adjacent cells (center to center)   (6.0 - 7.0 mm)
// AUS dist between corresponding dot from one cell directly below (center to center)   (10 - 11 mm)
//AUS dot diameter  (1.5 - 1.6mm)
// AUS dot height    (0.6 - 0.9 mm)
// AUS spherical radius = 0.76 mm – 0.81 mm

//https://www.ukaaf.org/wp-content/uploads/2020/03/Braille-Standard-Dimensions.pdf
// UK dist between two dots in the same cell (horizontally) 2.50 mm
// UK dist between two dots in the same cell (vertically) 2.50 mm
// UK dist between corresponding dots in adjacent cells  6.00 mm
// UK dist between corresponding dots from one cell directly below 10.00 mm
// UK Dot height 0.5 ± 0.1 mm
// UK Dot base dimension 1.5 ± 0.25 mm

// ISO 17049:2013
// horizontal dist between dots in same cell (center to center)   (2.0 - 2.8  mm)
// vertical dist between dots in same cell (center to center)   (2.2 - 2.8  mm)
// dist between corresponding dots in adjacent cells (center to center)   (5.1 - 6.8 mm)
// dist between corresponding dot from one cell directly below (center to center)   (10 - 15 mm)
// dot diameter  (1.0 - 1.7mm) 
// dot height   (0.3 - 0.7 mm)

// values that fit in all of the above criteria
//dot height .7
//dot diameter 1.6
//dist between dots in same cell (center to center)  2.5 mm
//dist between corresponding dots in adjacent cells (center to center)  6.8 mm
//dist between corresponding dot from one cell directly below (center to center)   11


dot_height = .6;
dot_radius = .75;
dot_dist_same_cell = 2.5;
dot_dist_next_cell = 6;
dot_dist_next_row = 10;





echo("upper case A = ",ord("A"));
echo("lower case a = ",ord("a"));
echo("upper case Z = ",ord("Z"));
echo("lower case z = ",ord("z"));
echo("number one = ", ord("1"));
echo("number zero = ", ord("0"));
echo("number nine = ", ord("9"));
echo("pound sign = ", ord("#"));
echo("space = ", ord(" "));
echo("upper case T = ",ord("T"));

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

// list or lists of alpha and numeric characters, along with space and #
braille_characters = [  [[0,0],[0,0],[0,0]] /* space - 32 */, 
[[0,0],[1,1],[1,0]] /*exclamation mark - 33 */,
[[0,0],[1,0],[1,1]] /*double quote - 34 */,
[[0,1],[0,1],[1,1]] /* # - 35 */ , 
[[0,0],[0,0],[1,0]] /* apostrophe - 39 */, 
[[0,0],[1,0],[0,0]] /* comma - 44 */,
[[0,0],[1,1],[0,1]]/* period - 46 */, 
[[0,1],[1,1],[0,0]] /* 0 - 48 */,  
[[1,0],[0,0],[0,0]] /* 1 - 49 */, 
[[1,0],[1,0],[0,0]] /* 2 - 50 */, 
[[1,1],[0,0],[0,0]] /* 3 -  51 */, 
[[1,1],[0,1],[0,0]] /* 4 - 52 */,  
[[1,0],[0,1],[0,0]] /* 5 - 53 */,  
[[1,1],[1,0],[0,0]] /* 6 - 54 */,  
[[1,1],[1,1],[0,0]] /* 7 - 55 */, 
[[1,0],[1,1],[0,0]] /* 8 - 56 */,  
[[0,1],[1,0],[0,0]] /* 9 - 57 */,  
[[0,0],[1,0],[1,1]] /*questionmark - 63*/,
[[1,0],[0,0],[0,0]] /* A - 65 */,  
[[1,0],[1,0],[0,0]] /* B - 66 */, 
[[1,1],[0,0],[0,0]] /*C - 67 */, 
[[1,1],[0,1],[0,0]] /*D - 68 */,  
[[1,0],[0,1],[0,0]] /* E - 69 */,  
[[1,1],[1,0],[0,0]] /* F - 70 */,  
[[1,1],[1,1],[0,0]] /* G - 71 */,  
[[1,0],[1,1],[0,0]] /* H - 72 */,  
[[0,1],[1,0],[0,0]] /* I - 73 */,  
[[0,1],[1,1],[0,0]] /* J - 74 */,  
[[1,0],[0,0],[1,0]] /* K - 75 */, 
[[1,0],[1,0],[1,0]] /* L - 76 */, 
[[1,1],[0,0],[1,0]] /* M - 77 */, 
[[1,1],[0,1],[1,0]] /* N - 78 */, 
[[1,0],[0,1],[1,0]] /* O - 79 */, 
[[1,1],[1,0],[1,0]] /* P - 80 */, 
[[1,1],[1,1],[1,0]] /* Q - 81 */,  
[[1,0],[1,1],[1,0]] /* R - 82 */, 
[[0,1],[1,0],[1,0]] /* S - 83 */, 
[[0,1],[1,1],[1,0]] /* T - 84 */, 
[[1,0],[0,0],[1,1]] /* U - 85 */, 
[[1,0],[1,0],[1,1]] /* V - 86 */, 
[[0,1],[1,1],[0,1]] /* W - 87 */, 
[[1,1],[0,0],[1,1]] /* X - 88 */, 
[[1,1],[0,1],[1,1]] /* Y - 89 */, 
[[1,0],[0,1],[1,1]]  /* Z - 90 */, 
[[0,0],[0,0],[0,1]] /*capital letter*/ ];

// list of unicode character number for aplha and numeric characters, along with spcae and #
braille_refs = [ 32,33,34,35,39,44,46,48,49,50,51,52,53,54,55,56,57,63,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,2880];
   
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
       
raw_string = "hello World!";   
echo("raw_string " ,raw_string);
//  braille_string  =  [ for ( s = raw_string) s];
// echo("braille_string " , braille_string);
//  braille_list_num = [ for (a = [0:len(raw_string)-1] ) if (ord(raw_string[a]) >= 48 && ord(raw_string[a]) <= 57)raw_string[a]];
//  echo("braille_list_num " , braille_list_num);
// braille_list1 = [ for (a = [0:len(braille_string)-1] ) if (ord(braille_string[a]) >= 48 && ord(braille_string[a]) <= 57) ["#", braille_string[a]] else braille_string[a] ];
//   echo("braille_list1 ", braille_list1);

  braille_list1 = [ for (a = [0 : len(raw_string)-1] )  
      // check if the character is the first character and a numeric character or 
      // if the previous character is a "space" and the current character is numeric and concat  "#"  if so
      if ((a == 0 && ord(raw_string[a]) >= 48 && ord(raw_string[a]) <= 57) ||   (ord(raw_string[a])-1 == 32 && ord(raw_string[a]) >= 48 && ord(raw_string[a]) <= 57) )  ["#", raw_string[a]]  
          // check if the character is a capital alpha character and concst the braille capital indicator 
          else if  ( ord(raw_string[a]) >= 65 && ord(raw_string[a]) <= 90 )  ["ୀ", raw_string[a]]  
              //for anything else just pass the character
              else     [ raw_string[a]]   ] ;    

    echo("braille_list1 " , braille_list1);  
    // this removes any nested lists in the provided list
 // function flatten(l) = [ for (a = l) for (b = a) b ] ;
 //braille_list2 = flatten(braille_list1);  
   braille_list2 = [ for (a = braille_list1) for (b = a) b ] ;          
  echo("braille_list2 ", braille_list2);
 echo("braille_list2 length " ,len(braille_list2));
  
  // second row
//  translate([0, dot_dist_next_row*-1,0])
  
for ( h = [0 : len(braille_list2)-1])
{ 
  
    translate([h*(dot_dist_next_cell - dot_dist_same_cell), 0,0])   //aligns the center of the dots to the reference squres below
 //  c = 0;
//  echo(test_string[h]," = ",ord(test_string[h]))
 //  echo("test string length ",len(test_string)-1)
   if (ord(braille_list2[h]) >= 97 && ord(braille_list2[h]) <= 122)  
   {
       for ( i = [0:len(braille_characters[search(ord(braille_list2[h])-32, braille_refs)[0]])-1])
  //       echo("length ", len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1)
   //      echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(braille_list2[h])-32, braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j])
             if(braille_characters[search(ord(braille_list2[h])-32, braille_refs)[0]][i][j] == 1)
                 color("yellow")
//                 echo("h = ", h, " i = ", i, " j = ", j)
      //        translate([h*5.1, 0,0]) 
                 translate([(h+j)*dot_dist_same_cell, (i)*-dot_dist_same_cell, (dot_radius - dot_height)*-1])
                   sphere(dot_radius, $fn=20);
                 
         }
          
   else if
       
           (ord(braille_list2[h]) >= 48 && ord(braille_list2[h]) <= 57 || ord(braille_list2[h]) <= 35)  
   {
       for ( i = [0:len(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]])-1])
  //       echo("length ", len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1)
   //      echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j])
             if(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]][i][j] == 1)
                 color("yellow")
//                 echo("h = ", h, " i = ", i, " j = ", j)
   //          translate([h*5.1, 0,0]) 
                 translate([(h+j)*dot_dist_same_cell, (i)*-dot_dist_same_cell,(dot_radius - dot_height)*-1])
                   sphere(dot_radius, $fn=20);
               
         }
          
   else 
   {
       for ( i = [0:len(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]])-1])
  //       echo("length ", len(braille_characters[search(ord(test_string[h])-32, braille_refs)[0]])-1)
   //      echo("braille_charactes[i] level ",braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i])
         for (j = [0:len(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]][i])-1])
    //         echo("i = ", i, " j = ", j, "and i*2.5 = ", i*2.5, " and j*2.5 =", j*2.5);
 //            echo("braille_characters j level ",  braille_characters[search(ord(test_string[h])-32, braille_refs)[0]][i][j])
             if(braille_characters[search(ord(braille_list2[h]), braille_refs)[0]][i][j] == 1)
                 color("yellow")
//                 echo("h = ", h, " i = ", i, " j = ", j)
      //        translate([h*5.1, 0,0]) 
                 translate([(h+j)*dot_dist_same_cell, (i)*-dot_dist_same_cell,(dot_radius - dot_height)*-1])
                   sphere(dot_radius, $fn=20);
             
            

         }
     }

 for (i= [-1:len(braille_list2)-1])     
 translate([(i*dot_dist_next_cell+dot_radius) , dot_dist_next_row*-.75,(dot_radius)*-2])
     cube([dot_dist_next_cell, dot_dist_next_row ,dot_radius*2]);



/*
function p(angle) = angle < 360 ? concat([[20 * sin(angle), 20 * cos(angle)]], p(angle + 45)) : [];
polygon(points = p(5)); 
*/
/*
function vadd(points,v,i=0) =
   i < len(points)
      ? concat([points[i] + v], vadd(points,v,i+1))
      : []; 
*/
  
//  echo("legnth of points " ,len(test_string));   
     
//  echo("vadd " ,vadd( test_string, braille_list));
   /*  
//     echo(str(test_string));
test_string_list  =  [ for ( s = test_string) s];
   echo ("test_string_list ",test_string_list); 
num_list = [ for (a = [0:len(test_string_list)-1] ) if (ord(test_string_list[a]) >= 48 && ord(test_string_list[a]) <= 57) ["#", test_string_list[a]] else test_string_list[a] ];
     echo("num_list ",num_list);
echo("num_list legnth ", len(num_list));

 function flatten(l) = [ for (a = l) for (b = a) b ] ;
  echo(flatten(num_list));   
  
  */
 /*    
function vadd(points,v,i=0) =
  i < len(str(points))  &&
     (ord(points[i]) == 48 || ord(points[i]) == 49 || ord(points[i]) == 50 || ord(points[i]) == 51 || ord(points[i]) == 52 || ord(points[i]) == 53 || ord(points[i]) == 54 || ord(points[i]) == 55 || ord(points[i]) == 56 || ord(points[i]) == 57)  //doesn't work on "Test 123"
 //     (ord(points[i]) <=48 || ord(points[i]) >= 57)  //does work on "Test 123"
 //   (ord(points[i]) >=48 && ord(points[i]) <= 57) ///doesn't work on "Test 123"
  //   points[i] == "1"  //doesn't work
//  is_string(points[i] )
      ? concat(["#"],points[i] , v, vadd(points,v,i+1))
      : []; 
     

for (i = [0:len(test_string)-1])
    if (ord(test_string[i]) >= 48 && ord(test_string[i]) <= 57)
        echo(test_string[i], " " ,ord(test_string[i]) );

numbers_list = ["0","1","2","3","4","5","6","7","8","9"];
test_string_num= str(test_string);
results_list = search("1",test_string);
 echo(results_list);   
    
//echo(search(number_list,test_string, 0));

*/


/*
fucntion make_list(string,)   = len(string) > 1 ? concat([[string]], make_list(string+1)) : [];
   braille_list= make_list(test_string);
   echo(  braille_list);
*/
     
/*
 for (i = [0:len(test_string)-1])
 {
   
//     echo(braille_list)
     if (ord(test_string[i]) >= 48 && ord(test_string[i]) <= 57) 
     {  
       braille_list= concat( ["#"], test_string[i],[braille_list]);
 }
    else
    {
   braille_list = concat( test_string[i] , []);
       echo("braille_list " ,braille_list);
    }
}  
//    }
*/




// spaceing test references
 for (i= [0:10])     
 translate([i*2*dot_dist_next_cell, dot_dist_next_row*-1,0])
     %cube([dot_dist_next_cell, dot_dist_next_row ,dot_height]);


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