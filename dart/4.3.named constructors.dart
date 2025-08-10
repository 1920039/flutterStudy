/* named constructor란
 - 다른 종류의 객체(예. 청팀 / 홍팀)를 만들기 위한 생성자
 - 매개변수(param)는 사용자에게 입력 받거나, default로 지정할 수 있음
 - 매개변수(param)를 named param 중 required로 할 수도 있고, positional param으로 할 수도 있음
*/

class Player {
  final String name, team; // 클래스의 필드들. 여기서는 선언만 하고,
  int hp, age; // 객체 생성 시 매개변수로 값을 받아 this.필드로 객체마다 값 다름.

  Player({
    required this.name, // 4.1에서 봤던 생성자. 단지 앞에 required가 붙었을 뿐
    required this.hp, // 의미를 되새겨 보면, 매개변수와 클래스 필드의 이름이 같아서 한꺼번에 선언/초기화하는 것
    required this.team, // 즉, Player({required this.name,.... }) : this.name = name,..
    required this.age,
  });

  // named constructor 유형 1: named params(required)
  Player.createRedPlayer({required name, required age})
    : this.name = name, // 앞의 this.name은 클래스의 필드, 뒤의 name은 객체 생성 시 전달받는 값
      this.age = age,
      this.team = 'red',
      this.hp = 0;

  // named constructor 유형 2: positional params
  Player.createBluePlayer(name, age)
    : this.name = name,
      this.age = age,
      this.team = 'blue',
      this.hp = 0;

  void sayHello() {
    print(
      'hello my name is $name, with $hp hp, i am $team team, $age years old',
    );
  }
}

void main() {
  var player1 = Player(name: 'haha', hp: 120, team: 'red', age: 15);
  player1.sayHello();
  var player2 = Player(name: 'hoho', hp: 130, team: 'blue', age: 45);
  player2.sayHello();
  var player3_red = Player.createRedPlayer(name: 'lala', age: 23);
  player3_red.sayHello();
  var player4_blue = Player.createBluePlayer('tomato', 7);
  player4_blue.sayHello();
  var player5 = Player.createBluePlayer('tomato', 7)
    ..hp =
        1000000 // cascade notation: player5.hp를 줄여서 쓴 것
    ..age = 300;
  player5.sayHello();
}
