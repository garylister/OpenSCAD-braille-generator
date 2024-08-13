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
dot_height = .6;
dot_radius = .75;
dot_dist_same_cell = 2.5;
dot_dist_next_cell = 6;
dot_dist_next_row = 10;


// list or lists of alpha and numeric characters, along with space and #
braille_characters = [  [32,[[0,0],[0,0],[0,0]] ]/* space - 32 */, 
[33,[[0,0],[1,1],[1,0]] ]/*exclamation mark - 33 */,
[34,[[0,0],[1,0],[1,1]] ]/*double quote - 34 */,
[35,[[0,1],[0,1],[1,1]] ]/* # - 35 */ , 
[39,[[0,0],[0,0],[1,0]] ]/* apostrophe - 39 */, 
[44,[[0,0],[1,0],[0,0]] ]/* comma - 44 */,
[46,[[0,0],[1,1],[0,1]] ]/* period - 46 */, 
[48,[[0,1],[1,1],[0,0]] ]/* 0 - 48 */,  
[49,[[1,0],[0,0],[0,0]] ]/* 1 - 49 */, 
[50,[[1,0],[1,0],[0,0]] ]/* 2 - 50 */, 
[51,[[1,1],[0,0],[0,0]] ]/* 3 -  51 */, 
[52,[[1,1],[0,1],[0,0]] ]/* 4 - 52 */,  
[53,[[1,0],[0,1],[0,0]] ]/* 5 - 53 */,  
[54,[[1,1],[1,0],[0,0]] ]/* 6 - 54 */,  
[55,[[1,1],[1,1],[0,0]] ]/* 7 - 55 */, 
[56,[[1,0],[1,1],[0,0]] ]/* 8 - 56 */,  
[57,[[0,1],[1,0],[0,0]] ]/* 9 - 57 */,  
[63,[[0,0],[1,0],[1,1]] ]/*questionmark - 63*/,
[65,[[1,0],[0,0],[0,0]] ]/* A - 65 */,  
[66,[[1,0],[1,0],[0,0]] ]/* B - 66 */, 
[67,[[1,1],[0,0],[0,0]] ]/*C - 67 */, 
[68,[[1,1],[0,1],[0,0]] ]/*D - 68 */,  
[69,[[1,0],[0,1],[0,0]] ]/* E - 69 */,  
[70,[[1,1],[1,0],[0,0]] ]/* F - 70 */,  
[71,[[1,1],[1,1],[0,0]] ]/* G - 71 */,  
[72,[[1,0],[1,1],[0,0]] ]/* H - 72 */,  
[73,[[0,1],[1,0],[0,0]] ]/* I - 73 */,  
[74,[[0,1],[1,1],[0,0]] ]/* J - 74 */,  
[75,[[1,0],[0,0],[1,0]] ]/* K - 75 */, 
[76,[[1,0],[1,0],[1,0]] ]/* L - 76 */, 
[77,[[1,1],[0,0],[1,0]] ]/* M - 77 */, 
[78,[[1,1],[0,1],[1,0]] ]/* N - 78 */, 
[79,[[1,0],[0,1],[1,0]] ]/* O - 79 */, 
[80,[[1,1],[1,0],[1,0]] ]/* P - 80 */, 
[81,[[1,1],[1,1],[1,0]] ]/* Q - 81 */,  
[82,[[1,0],[1,1],[1,0]] ]/* R - 82 */, 
[83,[[0,1],[1,0],[1,0]] ]/* S - 83 */, 
[84,[[0,1],[1,1],[1,0]] ]/* T - 84 */, 
[85,[[1,0],[0,0],[1,1]] ]/* U - 85 */, 
[86,[[1,0],[1,0],[1,1]] ]/* V - 86 */, 
[87,[[0,1],[1,1],[0,1]] ]/* W - 87 */, 
[88,[[1,1],[0,0],[1,1]] ]/* X - 88 */, 
[89,[[1,1],[0,1],[1,1]] ]/* Y - 89 */, 
[90,[[1,0],[0,1],[1,1]] ]/* Z - 90 */, 
[2880,[[0,0],[0,0],[0,1]] ]/*capital letter*/ ];


 // variable to allow us to access a previous inex in a list
b =0;
   
       
raw_string = "H3ll0 W0rld!";   
//echo("raw_string " ,raw_string);

raw_string2= "Thoink You";

 
  function generate_list (string) =[ for (a = [0 : len(string)-1] )  
    
     if (a==0)  
          // check if the character is the first character and a numeric character and concat  "#"  if so
     if (a == 0 && ord(string[a]) >= 48 && ord(string[a]) <= 57)  ["#", string[a]]  
      
         // check if the character is a capital alpha character and concst the braille capital indicator 
          else if  ( ord(string[a]) >= 65 && ord(string[a]) <= 90 )  ["ୀ", string[a]]  
              //for anything else just pass the character
              else     [ string[a]]      
              
    else  
        // assign b so we can get the previous index number and charck that character
        let (b = a-1)
     // check if the previous character is a "space" and the current character is numeric and concat  "#"  if so
     if ( (ord(string[b]) == 32 && ord(string[a]) >= 48 && ord(string[a]) <= 57) ) ["#", string[a]]  
         // check if the previous  character is not a number while the current character is a number and concat  "#"  if so
        // there appears to be a limit of three checks in an if statement, hence the two separate lines
         else if   ((ord(string[b]) <48  && ord(string[a]) >= 48 && ord(string[a]) <= 57 ))["#", string[a]]  
         else if   ((ord(string[b]) >57 &&  ord(string[a]) >= 48 && ord(string[a]) <= 57 ))["#", string[a]]  
          // check if the character is a capital alpha character and concat the braille capital indicator 
         else if  ( ord(string[a]) >= 65 && ord(string[a]) <= 90 )  ["ୀ", string[a]]  
              //for anything else just pass the character
              else     [ string[a]]  ]     ;


    // calls the fucntion to parse the string and removes any nested lists in the provided list
  function flatten_list (list)= [ for (a = list) for (b = a) b ] ;         
      
character_list  = generate_list(raw_string);
 character_list2  = generate_list(raw_string2); 
  
flat_list = flatten_list(character_list);
flat_list2 = flatten_list(character_list2);
   
   BrailleDots(braille_characters, flat_list);
   translate([0,dot_dist_next_row*-1, 0])
  BrailleDots(braille_characters, flat_list2);
   
  // places the dots to form teh braille characters
module BrailleDots (list1,list2) {
   for ( h = [0 : len(list2)-1])
    { 
  
  //aligns the center of the dots to the next cell reference square
 translate([h*(dot_dist_next_cell - dot_dist_same_cell), 0,0]) 

    // check if the character is a capital letter
   if (ord(list2[h]) >= 97 && ord(list2[h]) <= 122)  
   {
       // if the character is a upper case letter, subtract 32 to make it a lower case letter
       // this just reduces the amount of character data, since the braille pattern is the same for both
        for ( i = [0:len(list1[search(ord(list2[h])-32, list1)[0]][1])-1])
         for (j = [0:len(list1[search(ord(list2[h])-32, list1)[0]][1][i])-1])
             // only place dots where the is a "1" in the list
            if(list1[search(ord(list2[h])-32, list1)[0]][1][i][j] == 1)
                 color("yellow")
                // place the dot using the vallues of h, i and j to incrememnt the location and set the height based on the plane
                 translate([(h+j)*dot_dist_same_cell, (i)*-dot_dist_same_cell, (dot_radius - dot_height)*-1])
                   sphere(dot_radius, $fn=20);
                 
         }
    
   else 
   {
       // process the characters with out any adjustment
       for ( i = [0:len(list1[search(ord(list2[h]), list1)[0]][1])-1])
         for (j = [0:len(list1[search(ord(list2[h]), list1)[0]][1][i])-1])
              // only place dots where the is a "1" in the list
             if(list1[search(ord(list2[h]), list1)[0]][1][i][j] == 1)
                 color("yellow")
                 // place the dot using the vallues of h, i and j to incrememnt the location and set the height based on the plane
                 translate([(h+j)*dot_dist_same_cell, (i)*-dot_dist_same_cell,(dot_radius - dot_height)*-1])
                   sphere(dot_radius, $fn=20);
             
            

         }
     }
 }


// spaceing test references
 for (h = [0:4])
 for (i= [0:9])     
 translate([i*2*dot_dist_next_cell, dot_dist_next_row*h*-2-10,0])
     %cube([dot_dist_next_cell, dot_dist_next_row ,dot_height]);


     // braille backing
 for (i= [-1:len(flat_list)-1])     
 translate([(i*dot_dist_next_cell+(dot_radius*1.5)) , dot_dist_next_row*-.75,(dot_radius)*-2])
     cube([dot_dist_next_cell, dot_dist_next_row ,dot_radius*2]);      
