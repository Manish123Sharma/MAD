Future<int> cube(int num) {
  // Future.delayed(duration)
  return Future.value(num * num * num);
}

asyncTask() {
  print("I am the first line");
  Future.delayed(Duration(seconds: 5), () {
    print("I will call after 5 sec");
    Future.delayed(Duration(seconds: 4), () {
      print("Second");
      Future.delayed(Duration(seconds: 3), () {
        print("Third");
        Future.delayed(Duration(seconds: 2), () {
          print("Forth");
          Future.delayed(Duration(seconds: 1), () {
            print("Fifth");
          });
        });
      });
    });
  });
  print("I am the last line");
}

void main(List<String> args) {
  // asyncTask();
  Future<int> c = cube(5);
  c.then((value) => print(value)).catchError((err) => print(err));
  // print("Bye");
}
