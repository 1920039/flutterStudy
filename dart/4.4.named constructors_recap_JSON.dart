// API에서 JSON 파일을 받은 뒤, for 문에 넣어 객체 여러 개 생성하기
class Player {
  final String name, team;
  int hp; // age를 없앴음. 또한 required... 있던 것들도 없앴음.

  void sayHello() {
    print('hello my name is $name, with $hp hp, i am $team team');
  }

  Player.fromJson(Map<String, dynamic> playerJson) // Map은 파이썬의 딕셔너리와 같음
    // this.name이라고 하지 않은 이유: field이름과 매개변수이름이 충돌하지 않기 때문. 붙여도 동일하게 작동함
    : name = playerJson['name'],
      hp = playerJson['hp'],
      team = playerJson['team'];
}

void main() {
  var apiData = [
    // JSON 파일
    {'name': 'haha', 'team': 'red', 'hp': 0}, // '맵' (파이썬 딕셔너리)
    {'name': 'hoho', 'team': 'red', 'hp': 0},
    {'name': 'kkke', 'team': 'red', 'hp': 0},
  ];
  apiData.forEach((playerJson) {
    // apiData의 element들(임시 이름 playerJson, 변경 가능)에 대해 for 문을 실행.
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
