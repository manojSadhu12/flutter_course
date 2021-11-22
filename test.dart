void sum(num num1, num num2, void callback(num result)) {
  callback(num1 + num2);
}
Function greeting2 = (msg) => '!!! Hello $msg !!!';

void main() {
  sum(100, 200, print);
}
