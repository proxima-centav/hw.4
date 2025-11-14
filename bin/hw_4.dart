int totalCalls = 0;

void main() {
  greet();
  greet();
  greet();
  introduce('Alex', 25);
  introduce('Sam', 18);
  introduce('Bob', 30);
  int sum = addNumbers(7, 9);
  print('Sum of 7 and 9 is $sum');
  double justPrise = calculateDiscount(price: 45);
  print('Final prise: \$$justPrise');
  double discountesPrise = calculateDiscount(price: 45, discount: 10);
  print('Final prise: \$$discountesPrise');
  double priseWichTax = calculateDiscount(price: 45, discount: 10, tax: 5);
  print('Final prise: \$$priseWichTax');
  print('Total function calls: $totalCalls');
}

void greet() {
  totalCalls++;
  print('Hello! Welcome to Dart programming!');
}

void introduce(String name, int age) {
  totalCalls++;
  print('My name is $name and I am $age years old.');
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  double finalPrise = price - (price * discount / 100) + (price * tax / 100);
  return finalPrise;
}
