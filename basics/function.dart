void main() {
  // int c = add(10, 11);
  // print(c);
  // Function addition = Math();    // Addition is local variable
  // int result = addition(11, 12);
  // print("Result $result");
//   List<Function> li = Math();
//   print(li[0](10, 20));
//   Function subtract = li[1];
//   print(subtract(1, 2));
  // Map<String, Function> map = Math();
  // Function? fn = map['add'];
  // if (fn != null) {
  //   int result = fn(10, 20);
  // }
  // int result = map["add"]!(30, 10);
  // print(result);
  // result = map["sub"]!(1, 10);
  // print(result);
  Map<String, Function> map = Math(100);
  int result = map["add"]!(30, 10);
  print(result);
  result = map["sub"]!(1, 10);
  print(result);

}
//Simple Way , Function Defination Styles (Top Level)
// int add(int x, int y) {     // Scope Library (Dart) Level
//   return x + y;
// }
// List<Function> Math() {
// Map<String, Function> Math() {
//   // Outer or Wrapper Function
//   int a = 10;
//   Function add = (int x, int y) {
//     // Anonymous Function
//     return x + y;
//   };
//   Function sub = (int x, int y) {
//     // Anonymous Function
//     return x - y;
//   };
//   // return add;
//   // return [add, sub];
//   return {"add": add, "sub": sub};
// }
Map<String, Function> Math(int c) {
  // Outer or Wrapper Function
  int a = 10;
  Function add = (int x, int y) {
    // Anonymous Function
    return x + y + a + c;
  };
  Function sub = (int x, int y) {
    // Anonymous Function
    return x - y;
  };
  // return add;
  // return [add, sub];
  return {"add": add, "sub": sub};
}
