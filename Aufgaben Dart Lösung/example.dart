void main() {
  // Inferred Type
  var name = 'Bob';

  // Explict Type
  String firstName = "Bob";

  // Default Value
  int lineCount = 100;

  // Nullable
  int? nullable;
  
  int? isNull = null;

  // Final var
  final lastName = "Singer";

  // Compiletime Const
  const double pi = 3.41;

  // Integers
  var x = 1;
  var hex = 0x539;
  var exponent = 2e10;
  
  // Doubles
  var y = 1.1;
  var exponents = 1.42e5;
  
  // Variable as num ( Number )
  num z = 1; // Can be int and double!!
  z += 2.5;
  
  // String -> Int
  var one = int.parse('1');
  
  // int -> String 
  String oneAsString = 1.toString();

  // Single quotes
  var s1 = 'Hello World!';

  // Double quotes
  var s2 = "Double Quoted!";

  // String interpolation
  var s3 = "The content of s1 is: $s1";
  var s4 = "The conntent of s2 uppercased is: ${s2.toUpperCase()}";

  // Concatination
  var s5 = 'Over'
      'multiple '
      'Lines';

  var s6 = "Or with the + Operator" + " some text";

  var s7 = '''
  Some multi
  line 
  strings
  ''';

  var s8 = """also
  multiline
  string
  """;

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

    var list = [1, 2, 3];

  var l2 = ['Car', 'Pet'];

  var spred = [0, ...list];
  // print(spred);

  // collection if
  bool isActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (isActive) 'Outlet'];
  // print(nav);

  // collection for
  var l3 = [1, 2, 3];
  var listOfstrings = ['#0', for (var i in l3) '#$i'];
  // print(listOfstrings);

  // sets
  var pets = {'dog', 'cat'};
  pets.add("bird");
  // print(pets);

  // Maps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  print(gifts['first']);
}

// Shorthand
bool isTwo(int number) => number == 2;

// Named params
bool and({bool first = false, bool second = true}) => 
    first && second;

// Required and opional params 
bool and2({required bool first, bool? second}) => ...;

// anonymous functions
var list = [1,2,3].forEach((item) => ...);

class Point {
  int x = 0;
  int y = 0;
  
  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

// Mixins
mixin Fun {
  bool haveFun = true;
  
  void showFun() {
    if(this.haveFun) {
      print(":)");
    } else {
      print(":(");
    }
  }
}

class Human with Fun {
  ...
}
