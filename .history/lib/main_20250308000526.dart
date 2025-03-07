import 'dart:io' as console;

void printName(String name){
  print("Your Name is: $name");
}

String readName(){
  print("Enter Your Name: ");
  return console.stdin.readLineSync()!;
}

int readNumber(){
  int? number;
  do {
    print("Enter Number:");
    number =  int.tryParse(console.stdin.readLineSync() ?? ""); 
  } while (number == null || number == "");

  return number; 
}

numberType checkNumberType(int number){
  return (number % 2 == 0) ?numberType.even :numberType.odd; 
}

void printNumberType(int number,numberType numType){
  switch(numType){
    case numberType.even:
      print("$number is even");  
    case numberType.odd:
      print("$number is odd");  
  }
}
enum numberType {
  even,
  odd,
}


List get readValidityInfo{
  print("Enter Your Age?");
  int age = int.parse(console.stdin.readLineSync()?? "1");

  print("Do you have Driver License? Yes/No");
  String? hasDriverLicense = console.stdin.readLineSync();

  return [age,hasDriverLicense];
}
bool isAccepted(List validityInfo){
  return (validityInfo[0] >= 21 && validityInfo[1] == "Yes");
}

void printResult(List info){
  String result = isAccepted(info) ?"Hired" :"Rejected";
  print(result);
}

void main(){
  // printName(readName());

  // int number = readNumber();
  // printNumberType(number, checkNumberType(number));

  printResult(readValidityInfo);
}
