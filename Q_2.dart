/*
2. Write a program that prints the Fibonacci sequence up to a given 
number using a for loop.
Example:
Input: 10
Output: 0 1 1 2 3 5 8
 */

void main() {
  int n = 10; 

  int a = 0; 
  int b = 1; 

  print(a); 

  for (int i = 2; i < 7; i++) {
    

    int c = a + b;
    

    print(c); 

    a = b; 
    b = c; 
  }
}