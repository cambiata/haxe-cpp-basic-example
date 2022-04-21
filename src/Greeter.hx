@:include("./Greeter.cpp")
@:extern("Greeter*")
extern class Greeter {
	@:native("new Greeter") public static function create():Greeter;

	@:native("sayHello") public function sayHello():Void;
	@:native("sayGoodbye") public function sayGoodbye():Void;
}
