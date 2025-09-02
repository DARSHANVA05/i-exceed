void main() {
  /* Prefix operation
   * performs whatever the operation at first then updates the value.
   */
  int x = 110;
  print(x++); //prints 110
  print(x); //prints 111

  /* Postfix operation
   * updates the value at first then performs whatever the operation.
   */
  int y = 110;
  print(++y); //prints 110
  print(y); //prints 111
}
