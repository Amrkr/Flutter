https://dartpad.dev/dart
-------------------------------------------------------------------------------------------------------------------------------------

Data Types:

int                 : 1
num, double         : 1.1
String              : 'Hello'  "Hello"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
double addNumber(double num1, num num2){
  //print(num1+num2);
  return num1 + num2;
}

class Person {
  String name = 'Max';
  int age = 30;
}

void main() {
  /*for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }*/
  
  var firstResult = addNumber(1, 1);
  double result2 = addNumber(2, 4.6);
  String name = "Name1",
          name2 = 'Name2';
  
  
  print(addNumber(1, 2.3));
  print("Hello");
  
  //Object creation
  var p1 = new Person();
  var p2 = Person();
  
  print (p2);
  print(p2.name);
  print(p2.age);
  
  p1.name= 'Amar';
  print(p1.name);
}



//////////////////////////////////////////////////////////////////////// Constructor
class Person {
  String name;
  int age;
  
  Person(String inputName, int age){
    name = inputName;
    this.age = age;
  }
}


void main() {
  //Object creation
  var p1 = new Person('Max', 30);
  var p2 = Person('Amar', 28);
  
  print (p2);
  print(p2.name);
  print(p2.age);
  
  p1.name= 'Amar';
  print(p1.name);
}

////////////////////////////////////////////////////////// Named parameters
Named paramter are optional and should be passed along with the name of parameters
@required params are not optional. This is not dart feature but flutter.

class Person {
  String name;
  int age;
  //with default age value and mandatory inputName
  Person({@required String inputName, int age = 30}){
    name = inputName;
    this.age = age;
  }
}

void main() {
  
  //Object creation
  var p1 = new Person(inputName: 'Max', age: 30);
  var p2 = Person(inputName: 'Amar');
  
  print (p2);
  print(p2.name);
  print(p2.age);
  
  p1.name= 'Amar';
  print(p1.name);
}

/////////////////////////////////////////////////////////////// Other way
class Person {
  String name;
  int age;
  
  Person({this.name, this.age = 32});
}

void main() {
 
  var p1 = new Person(name: 'Max', age: 30);
  var p2 = Person(name: 'Amar');
  
  print (p2);
  print(p2.name);
  print(p2.age);
  
  p1.name= 'Amar';
  print(p1.name);
}

//////////////////////////////////////////////// Functions
//Named
void answerQuestion(){
    print('Answer Chosen !!');
  }


//Anonymous
() => print('Answer 2 Chosen!!')

//Anonymous

() {
      //other code
      print('Answer 3 chosen!!');
   }
   
NOTE: append () to execute while declaring.


//////////////////////////////////////////// Private access modifier
To make anything private prefix '_' 

example:
var _questionIndex = 0;

  /* button click functions. Private function */
  void _answerQuestion(){
    setState(() {
      _questionIndex += 1;
    });
    
    print(_questionIndex);
  }
  
//////////////////////////////////////////////////////////////////////   
