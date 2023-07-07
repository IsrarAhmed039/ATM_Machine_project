/*
15. Write a program to make such a pattern as a pyramid with an asterisk.
 
   * 
  * * 
 * * * 
* * * * 
*/
void main() {
  int numb = 4;

  for (int i = 1; i <=  numb; i++) {
    String row = '';

    for (int j = 1; j <=  numb - i; j++) {
       numb += ' ';
    }

    for (int k = 1; k <= i; k++) {
       numb += '* ';
    }

    print( numb);
  }
}