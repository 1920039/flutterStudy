class Player {
  final String name; // 생성자에서 사용하려는 변수(인스턴스 변수)는 미리 클래스 변수로 선언해야 함
  int hp; // 클래스 필드(변수) 선언에는 'var'를 쓸 수 없고 자료형 명시해야

  Player(this.name, this.hp); // 생성자. 객체 생성 시 name, hp를 꼭 넣어야 함.

  void sayHello() {
    print('hello my name is $name, with $hp hp');
  }
}

void main() {
  var player1 = Player('haha', 120);
  player1.sayHello();
  var player2 = Player('hoho', 130);
  player2.sayHello();
}
