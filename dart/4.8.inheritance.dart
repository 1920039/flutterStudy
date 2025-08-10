class Human {
  final String name;
  Human(this.name); // 생성자. 객체 생성 시 name을 반드시 넣어줘야 함.
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { blue, red } // 선택지를 지정해줌(오입력 방지). 선택지는 따옴표 쓰면 안 됨.

class Player extends Human {
  final Team team; // Team 자료형인 team이라는 field(변수)를 선언

  Player({
    // 자식 클래스의 생성자인데, named params 형태로 만듦
    required this.team, // team은 이 클래스의 필드이므로 this.team으로 초기화
    required String name, // name은 부모 클래스의 필드라서 this로 초기화 불가
  }) : super(name); // 'super'를 사용하여 부모 클래스에게 talk함
  // Player 생성자의 name 매개변수를 Human의 생성자에 전달함.
  // 이를 통해 Human 클래스의 final name 필드를 초기화함.
  // 참고로 부모 클래스의 name은 final이라서 값을 한 번만 정할 수 있음

  @override // 부모 클래스의 메서드를 override(재정의): 일부는 유지+일부 추가도 가능
  void sayHello() {
    super.sayHello();
    print('and I play for ${team.name}'); //team 뒤에 name을 안 붙이면 'Team.red' 출력
    //'{ }'를 넣은 이유는 - name을 붙이기 위해(속성에 접근할 때)
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'haha',
  ); // object를 생성하며 값을 넣어줌. 여기서 입력하는 name값은 Player클래스의 name을 거쳐서, Human클래스의 name으로 forward됨
  player.sayHello();
}
