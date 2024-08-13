// website references used
  // https://www.brailleauthority.org/size-and-spacing-braille-characters
 // https://www.pharmabraille.com/pharmaceutical-braille/the-braille-alphabet/
// https://en.wikipedia.org/wiki/Braille
// https://symbl.cc/en/unicode/blocks/braille-patterns/
// https://www.brailleauthority.org/ueb/symbols_list.pdf
// https://nfb.org/programs-services/braille-certification/literary-braille-transcribing
// https://www.unicode.org/charts/
//use this to find the glyph(s) you need and be able to copy it into a chr() to get the number(s)
// https://onlineunicodetools.com/generate-unicode-range

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

// values that fit in all of the above criteria. default values are for UEB
/* [Dimensions] */
//Range 0.3 - 0.9
dot_height = .5; //[:0.3:0.9]
//Range 1.0 - 1.7
dot_diameter = 1.5; //[:1.0:1.7]
dot_radius = dot_diameter/2;
//Range 2.0 - 2.8
dot_dist_same_cell = 2.5; //[:2.0:2.8]
//Default is 6.0 but .0 isn't registered.  Range 5.1 - 6.8
dot_dist_next_cell = 6.1; //[:5.1:6.8]
//Range 10 - 15
dot_dist_next_row = 10; //[:10:15]

/* [Output] */      

line_one = "";   

add_line_two = false;

line_two = "";

add_line_three=false;

line_three = "";

add_line_four =false;

line_four= "";




//The backing plate includes an empty cell on both sides
Backing_plate=true;




// list  of alpha, numeric and special characters
// each item in the list has three items, two numbers and a list of lists
// the two numbers allow upper and lower case characters to be mapped to the same 
// braille character.  the "0" is a place holder, to prevent an undefined value
// [ number1, number2, [  [[ list_item1 ],[ list_item2 ],[ list_item3]] ] ]
//  [ identifier1, identifier2, [ [[ top_left_dot ],[ top_right_dot ] ], [ [ middle_left_dot ], [middle_right_dot ], [bottom_left_dot],[bottom_right_dot] ]] ] ]
/* [Hidden] */
braille_characters = [  
[32,0,[ [[0,0],[0,0],[0,0]] ] ] /* space - 32 */, 
[33,0,[ [[0,0],[1,1],[1,0]] ] ] /*exclamation mark ! - 33 */,
[34,0,[ [[0,1],[0,1],[0,0]], [[0,0],[1,0],[1,1]] ] ] /* double quotation mark  opening  " - 34 */,
[38,0,[ [[0,1],[0,0],[0,0]], [[1,1],[1,0],[1,1]] ] ]/* ampersand  & - 38 */,
[35,0,[ [[0,1],[0,1],[0,1]], [[1,1],[0,1],[0,1]] ] ] /* pound # - 35 */ , 
[36,0,[ [[0,1],[0,0],[0,0]], [[0,1],[1,0],[1,0]] ] ] /* dollar $ - 36 */,
[37,0,[ [[0,1],[0,0],[0,1]], [[0,0],[0,1],[1,1]] ] ] /* percent % - 37 */,
[39,0,[ [[0,0],[0,0],[0,1]], [[0,0],[1,0],[1,1]] ] ] /* single quotation mark opening ' - 39 */, 
[40,0,[ [[0,0],[0,1],[0,0]], [[1,0],[1,0],[0,1]] ] ] /* parenthesis open ( - 40 */,
[41,0,[ [[0,0],[0,1],[0,0]], [[0,1],[0,1],[1,0]] ] ] /* parenthesis close ) - 41 */,
[42,0,[ [[0,0],[0,1],[0,0]], [[0,0],[0,1],[1,0]] ] ] /* asterisk * - 42 */,
[43,0,[ [[0,0],[0,1],[0,0]], [[0,0],[1,1],[1,0]] ] ] /* plus + - 43 */,
[44,0,[ [[0,0],[1,0],[0,0]] ] ] /* comma , - 44 */,
[45,0,[ [[0,0],[0,0],[1,1]] ] ] /* hyphen/minus -  - 45 */,
[46,0,[ [[0,0],[1,1],[0,1]] ] ] /* period . - 46 */, 
[47,0,[ [[0,1],[0,1],[0,1]], [[0,1],[0,0],[1,0]] ] ] /* forward slash / - 47 */,
[48,0,[ [[0,1],[1,1],[0,0]] ] ] /* 0 - 48 */,  
[49,0,[ [[1,0],[0,0],[0,0]] ] ] /* 1 - 49 */, 
[50,0,[ [[1,0],[1,0],[0,0]] ] ] /* 2 - 50 */, 
[51,0,[ [[1,1],[0,0],[0,0]] ] ] /* 3 -  51 */, 
[52,0,[ [[1,1],[0,1],[0,0]] ] ] /* 4 - 52 */,  
[53,0,[ [[1,0],[0,1],[0,0]] ] ] /* 5 - 53 */,  
[54,0,[ [[1,1],[1,0],[0,0]] ] ] /* 6 - 54 */,  
[55,0,[ [[1,1],[1,1],[0,0]] ] ] /* 7 - 55 */, 
[56,0,[ [[1,0],[1,1],[0,0]] ] ] /* 8 - 56 */,  
[57,0,[ [[0,1],[1,0],[0,0]] ] ] /* 9 - 57 */,  
[58,0,[ [[0,0],[1,1],[0,0]] ] ] /* colon : - 58*/,
[59,0,[ [[0,0],[1,0],[1,0]] ] ] /* semicolon : - 59*/,
[60,0,[ [[0,1],[0,0],[0,0]], [[1,0],[1,0],[0,1]] ] ] /* angle bracket open/ less than < - 60 */,
[61,0,[ [[0,0],[0,1],[0,0]], [[0,0],[1,1],[1,1]] ] ] /* equals = - 61 */,
[62,0,[ [[0,1],[0,0],[0,0]], [[0,1],[0,1],[1,0]] ] ] /* angle bracket close/ greater than < - 62 */,
[63,0,[ [[0,0],[1,0],[1,1]] ] ] /*questionmark ? - 63*/,
[64,0,[ [[0,1],[0,0],[0,0]], [[1,0],[0,0],[0,0]] ] ] /* commercial at @ - 64 */,
[65,97,[ [[1,0],[0,0],[0,0]] ] ] /* A - 65, a - 97 */,  
[66,98,[ [[1,0],[1,0],[0,0]] ] ] /* B - 66, b - 98 */, 
[67,99,[ [[1,1],[0,0],[0,0]] ] ] /*C - 67, c - 99 */, 
[68,100,[ [[1,1],[0,1],[0,0]] ] ] /*D - 68, d - 100 */,  
[69,101,[ [[1,0],[0,1],[0,0]] ] ] /* E - 69, e - 101 */,  
[70,102,[ [[1,1],[1,0],[0,0]] ] ] /* F - 70, f - 102 */,  
[71,103,[ [[1,1],[1,1],[0,0]] ] ] /* G - 71, g - 103 */,  
[72,104,[ [[1,0],[1,1],[0,0]] ] ] /* H - 72, h - 104 */,  
[73,105,[ [[0,1],[1,0],[0,0]] ] ] /* I - 73, i - 105 */,  
[74,106,[ [[0,1],[1,1],[0,0]] ] ] /* J - 74, j - 106 */,  
[75,107,[ [[1,0],[0,0],[1,0]] ] ]/* K - 75, k - 107 */, 
[76,108,[ [[1,0],[1,0],[1,0]] ] ] /* L - 76, l - 108 */, 
[77,109,[ [[1,1],[0,0],[1,0]] ] ] /* M - 77, m - 109 */, 
[78,110,[ [[1,1],[0,1],[1,0]] ] ] /* N - 78, n - 110 */, 
[79,111,[ [[1,0],[0,1],[1,0]] ] ] /* O - 79, o - 111 */, 
[80,112,[ [[1,1],[1,0],[1,0]] ] ]/* P - 80, p - 112 */, 
[81,113,[ [[1,1],[1,1],[1,0]] ] ]/* Q - 81, q - 113 */,  
[82,114,[ [[1,0],[1,1],[1,0]] ] ] /* R - 82, r - 114 */, 
[83,115,[ [[0,1],[1,0],[1,0]] ] ] /* S - 83, s - 115 */, 
[84,116,[ [[0,1],[1,1],[1,0]] ] ] /* T - 84, t - 116 */, 
[85,117,[ [[1,0],[0,0],[1,1]] ] ] /* U - 85, u - 117 */, 
[86,118,[ [[1,0],[1,0],[1,1]] ] ] /* V - 86, v - 118 */, 
[87,119,[ [[0,1],[1,1],[0,1]] ] ] /* W - 87, w - 119 */, 
[88,120,[ [[1,1],[0,0],[1,1]] ] ] /* X - 88, x - 120 */, 
[89,121,[ [[1,1],[0,1],[1,1]] ] ] /* Y - 89, y - 121 */, 
[90,122,[ [[1,0],[0,1],[1,1]] ] ] /* Z - 90, z - 122 */, 
[91,0,[ [[0,1],[0,0],[0,1]], [[1,0],[1,0],[0,1]] ] ] /* square bracket open [ - 91 */,
[92,0,[ [[0,1],[0,1],[0,1]], [[1,0],[0,0],[0,1]] ] ] /* backslash \ - 92 */,
[93,0,[ [[0,1],[0,0],[0,1]], [[0,1],[0,1],[1,0]] ] ] /* square bracket close ] - 93 */,
[94,0,[ [[0,1],[0,1],[0,0]], [[1,1],[0,0],[0,1]] ] ] /* caret/circumflex ^ - 94 */, 
[95,0,[ [[0,1],[0,0],[0,1]], [[0,0],[0,0],[1,1]] ] ] /* under score _ - 95 */,
[96,0,[ [[0,1],[0,1],[0,0]], [[1,0],[0,0],[0,1]] ] ] /* grave accent ` - 96 */,
[123,0,[ [[0,1],[0,1],[0,1]], [[1,0],[1,0],[0,1]] ] ] /* curly bracket open { - 123 */,
[124,0,[ [[0,1],[0,1],[0,1]], [[1,0],[1,1],[0,1]] ] ] /* vertical line(pipe) | - 124 */,
[125,0,[ [[0,1],[0,1],[0,1]], [[0,1],[0,1],[1,0]] ] ] /* curly bracket close } - 125 */,
[126,0,[ [[0,1],[0,0],[0,0]], [[0,0],[0,1],[1,0]] ] ] /* tilde ~ - 126 */,
[191,0,[ [[0,1],[0,1],[0,0]], [[0,0],[0,1],[0,1]], [[0,0],[0,1],[1,1]] ] ] /* inverted question mark ¿ - 191 */,
[10368,0,[ [[0,0],[0,0],[0,1]] ] ]  /*capital letter - ⢀ */ ,
[10480,0,[ [[0,1],[0,1],[1,1]] ] ]  /*numeric - ⣰ */ ,
// using the numbers for both glyphs to prevent using an unwanted character
[1028810292,0,[ [[0,1],[0,1],[0,0]], [[0,0],[0,1],[1,1]] ] ] /* double quotation mark closiing  " - ⠰ ⠴ */,
[1027210292,0,[ [[0,0],[0,0],[0,1]], [[0,0],[0,1],[1,1]] ] ]  /*single quotation mark closiing  ' - ⠠ ⠴ */,
];




function generate_character_map_list(list) =  [



     for (a = [0 : len(list)-1] )  
      
        // search the list to find the character location.  search("b", "abc") only seaches abc[0] for the item,
        // so you need to use search("b", abc", num_returns_per_match=0, index_col_num=1) to check 
        // abc[1]...[n].  search returns a list of locations the item was found ie [1] or and empty list ie [] if not found
        // is_num(search("b", "abc")[0] lets us know if we found the item     
            let( search_loc = is_num(search(ord(list[a]), braille_characters)[0])  ? search(ord(list[a]), braille_characters)  : search(ord(list[a]), braille_characters, num_returns_per_match=0, index_col_num=1) )
    
            // assign b so we can get the previous index number and check that character
            let (b = a ==0 ?  a :  a - 1)
            
            // assign c so we can get the next index number and check that character
            let (c =  len(list) == 1 ? 0 : a + 1)
 //           let (c =   a + 1)
        
          // if the current character is the first character and a numeric character.   concat  "#"  and the character
          if ( ( a ==0) && ord(list[a]) >= 48 && ord(list[a]) <= 57)  [braille_characters[search(ord("⣰"), braille_characters)[0]][2], braille_characters[search_loc[0]][2] ]
              
                   // if the previous character is not a number and the current character is a number, concat  "#"  and the character
            else if   ( (ord(list[b]) <48  || ord(list[b]) >57) && (ord(list[a]) >= 48 && ord(list[a]) <= 57) )  [braille_characters[search(ord("⣰"), braille_characters)[0]][2], braille_characters[search_loc[0]][2]]  
          
                     // if the current character is the first character, is an uppercase character and the next character is an upper case character,  concat two braille capital indicators and the character
            else if  (( a ==0) &&  (ord(list[a]) >= 65 && ord(list[a]) <= 90) && (ord(list[c]) >= 65 && ord(list[c]) <= 90)  )   [braille_characters[search(ord("⢀"), braille_characters)[0]][2], braille_characters[search(ord("⢀"), braille_characters)[0]][2], braille_characters[search_loc[0]][2]]  
            
             // if the current character is the first character, is an upper case character and the next character is not an upper case characted,  concat the braille capital indicator and the character
            else if  ( ( a == 0) &&  (ord(list[a]) >= 65 && ord(list[a]) <= 90) &&  (ord(list[c]) < 65 || ord(list[c]) > 90)  )  [braille_characters[search(ord("⢀"), braille_characters)[0]][2], braille_characters[search_loc[0]][2]]  
                
              // if the previous character is not an upper case character, the current character is an uppar casr character and the next character is not a upper case character, concat the braille capital indicator and the current character
             else if  ( ( a < len(list)-1) && (ord(list[b]) <65  || ord(list[b]) >90)  &&  (ord(list[a]) >= 65 && ord(list[a]) <= 90 ) && (ord(list[c]) < 65 || ord(list[c]) > 90 )   )   [braille_characters[search(ord("⢀"), braille_characters)[0]][2], braille_characters[search_loc[0]][2]]  
            
             // if the previous character is not an upper case character, the current character is an upper case character and the next character is an upper case character, concat two capital characters and the current character
            else if ( ( a < len(list)-1) &&(ord(list[b]) <65  || ord(list[b]) >90)  &&  (ord(list[a]) >= 65 && ord(list[a]) <= 90 ) && (ord(list[c]) >= 65 && ord(list[c]) <= 90 ) )   [ braille_characters[search(ord("⢀"),  braille_characters)[0]][2], braille_characters[search(ord("⢀"),  braille_characters)[0]][2],  braille_characters[search_loc[0]][2] ]  
        
           // if the current character is not the last character, is an upper case character, has an upper case character before and an lower case character after it,  concat the current character and two capital characters after
            else if (  ( a < len(list)-1) && (ord(list[b]) >= 65  && ord(list[b]) <= 90)  &&  (ord(list[a]) >= 65 && ord(list[a]) <= 90 ) && (ord(list[c]) >= 97 && ord(list[c]) <= 122 )  )   [ braille_characters[search_loc[0]][2],  braille_characters[search2(ord("⢀"),  braille_characters)[0]][2], braille_characters[search(ord("⢀"),  braille_characters)[0]][2] ] 
                
            // if the current character is a double quote ( " ),  check if the current charcter location matches to a search result  location for (") that when one is added to the search location amd a modulo 2 operation is applied, the end result is zero. (ie, the list is "Hi", so the search results would be [0,3].  if the current character location is 3, it matches to the search result at [1] (the second one). if you take that value (1) and add 1 the result is 2, which when you apply a modulo 2 operator returns 0.  this means the value is even and therefore the second ( " ).  print the closing double quote character .  you have to search for the number assigned to the characters in the list, since this is a double glyph character
            else if( ord(list[a])== 34 &&  ((search( a, search("\"",list,0)[0] )[0] + 1)%2 ) == 0 )   [braille_characters[search(1028810292,  braille_characters)[0]][2] ] 
        
           // this works the exact same way as the double quote code above.  It's disable since if you have a contraction in a single quoted string (ie 'I'm Fine') it might be more confusing than just using open single quotes.  you have to search for the number assigned to the characters in the list, since this is a double glyph character
    //        else if( ord(list[a])== 39 &&  ((search( a, search("'",list,0)[0] )[0] + 1)%2 ) == 0 )  [braille_characters[search(1027210292,  braille_characters)[0]][2] ]
                
                  //for anything else just pass the character
                  else    [ braille_characters[search_loc[0]][2]] 
                  ]    
    
;



// flatten the list two times to get the characters at the correct depth    
    // x=2 when no line_list          
 function flatten_character_map_list(list,x=0) =  ( x == 2 ) ? list :  flatten_character_map_list([ for (a = list) for (b = a) b ],x+1)  ;
     
  function flatten_list_list(list,x=0) =  ( x == 1 ) ? list :  flatten_line_list([ for (a = list) for (b = a) b ],x+1)  ;
     
 // create list of the available lines
 function generate_line_list() = [ 
//  if (add_line_four && len(line_four) > 0) [  flat_line_one_map  , flat_line_two_map , flat_line_three_map, flat_line_four_map]
//   else if (add_line_three && len(line_three) > 0) [  flat_line_one_map  , flat_line_two_map , flat_line_three_map]
// else  if (add_line_two && len(line_two) > 0) [  flat_line_one_map  , flat_line_two_map ]
//      else [flat_line_one_map] 
  
// for (i = [0:len(verified_line_list)-1])
//     if (verified_line_list[i] )  verified_line_list[i] 
  
  

          ];
     


echo("line_one ", line_one);
 echo("line_two ", line_two);    
echo("line_three ", line_three);
echo("line_four ", line_four);
     
verified_line_list= [ line_one, 
      (add_line_two && len(line_two)>0) ? line_two : false, 
      (add_line_three && len(line_three)>0) ? line_three : false, 
      (add_line_four && len(line_four)>0 ) ? line_four : false];
     
echo("verified_line_list " ,verified_line_list);

line_list = generate_line_list();
//line_list = flatten_character_map_list(generate_line_list());
//ECHO: "line_list ", ["H", "3", "l", "l", "o", "W", "o", "r", "l", "d"]
echo("line_list ",line_list);


character_map=generate_character_map_list(line_list);
echo("character_map ",character_map);
echo("len_character_map ", len(character_map));

flat_character_map = flatten_character_map_list(character_map);
echo("flat_character_map ", flat_character_map);
echo("len_flat_character_map ", len(flat_character_map));
//
// line_one_char_map = generate_character_map_list(line_one);
// echo("line_one_char_map =",line_one_char_map);
// line_two_char_map = generate_character_map_list(line_two);
// line_three_char_map = generate_character_map_list(line_three);
//  line_four_char_map = generate_character_map_list(line_four);
// 
//      
// flat_line_one_map = flatten_character_map_list(line_one_char_map);
//  flat_line_two_map = flatten_character_map_list(line_two_char_map);
//   flat_line_three_map = flatten_character_map_list(line_three_char_map);
//   flat_line_four_map = flatten_character_map_list(line_four_char_map);
     


//echo("generate_line_list() ", generate_line_list());
      


  
 BrailleDotsLocation(character_map,dot_radius,dot_height);
// BrailleDotsLocation(test_list,dot_radius,dot_height);

// if (Backing_plate == true)  back_plate(flat_character_map);
    

  
// generate the dots.  this gives a flat bottom and a spherical top
 module BailleDots(radius,height ) {
     intersection(){
         cylinder(h=height, r=radius, $fn=16);
         
         // (height/2)+((radius*2)^2/(8*height)) returns the radius of an arc based on height and width
         translate([0, 0, ((height/2)+((radius*2)^2/(8*height))-height)*-1]){
             sphere(r=(height/2)+((radius*2)^2/(8*height)), $fn=32); 
         }
     }
} 
  

  // places the dots to form the braille characters
module BrailleDotsLocation (list1,radius,height) {
       
// loop through the items in the flattened list
for ( g = [0 : len(list1)-1]) { 
    echo("g =", g)
    for ( h = [0 : len(list1[g])-1]) { 
            for ( i = [0:len(list1[g][h])-1]) {
                    for (j = [0:len(list1[g][h][i])-1]) {
                        // only place dots where the is a "1" in the list
                        if(list1[g][h][i][j] == 1) {
                            color("yellow")
                            
                            // place the dot using the vallues of h, i and j to incrememnt the location 
                           translate([0,(g*dot_dist_next_row)*-1,0]){
                                translate([(h)*(dot_dist_next_cell ), 0,0]) {
                                    translate([(j)*dot_dist_same_cell, (i)*-dot_dist_same_cell,0]){
                                    BailleDots(radius,height );
                                }
                            }
                      }
                    }
                }
            }
       }
    }
}



     // braille backing includes one cell space at the begining and the end
module back_plate(list) {
  for (i= [0 : len(list)-1])   
      for (j = [ -1 :  len(list[i])])    
          translate([(j*dot_dist_next_cell)-(1.25*dot_diameter), (-1*dot_dist_next_row)-(i*dot_dist_next_row)+(1.5*dot_diameter),-1*dot_height])
            cube([dot_dist_next_cell, dot_dist_next_row, dot_height]);  

}




// spaceing test references
// for (h = [0:4])
// for (i= [-1:4])     
// translate([i*2*dot_dist_next_cell, dot_dist_next_row*h*-2-10,0])
////    color("pink")
//     %cube([dot_dist_next_cell, dot_dist_next_row ,dot_height]);



//echo(ord("⠠"));
//echo(chr(10288));
//echo(ord("⠴")); 
//echo(chr(10292));
