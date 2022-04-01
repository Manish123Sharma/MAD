import 'dart:io';
void main() {
  int n;
  print("Enter Range");
  n = int.parse(stdin.readLineSync().toString());
  loop(n);
}

void loop(int n)
{
  for (var i = 1; i < n; i++) {
    print(cube(i));
  }
}
int cube(int num) {
  return num * num * num;
}

int square(int num) {
  return num * num;
}

String evenOdd(int num){
  return num % 2 == 0 ? "Even $num" : "Odd $num";
}