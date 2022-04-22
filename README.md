# haxe-cpp-basic-example

Simple test project that shows how to write externs for simple native cpp code:

```cpp
// src/Greeter.cpp

#include <iostream>

class Greeter
{
  public:
  void sayHello () {
        std::cout << "Greeter saying \"Hello!\" \n";        
    }

  void sayGoodbye () {
        std::cout << "Greeter saying \"Goodbye!\" " << std::endl;        
  }

};
```

```haxe
// src/Greeter.hx

@:include("./Greeter.cpp")
@:native("Greeter*")
extern class Greeter {
	@:native("new Greeter") public static function create():Greeter;

	@:native("sayHello") public function sayHello():Void;
	@:native("sayGoodbye") public function sayGoodbye():Void;
}

```
