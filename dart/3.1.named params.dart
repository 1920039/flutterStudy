// default + named params
String sayHello({String name = 'dodo', int age = 22}) {
  return 'hello $name, you are $age years old';
}

void main() {
  print(sayHello(name: 'hohoho'));
}

/* 
1. 매개변수 넣는 2가지 방법: ① positional params ② named params
2. named params를 쓰려면 다음 3가지를 해야 함.
  ① 매개변수들을 '{}'로 감싸줌
  ② 매개변수들을 required로 하거나 default 값을 넣어줌('=' 사용)
  ③ 함수를 호출하여 인자를 넣을 때는 '매개변수 이름: 값' 형식
*/
