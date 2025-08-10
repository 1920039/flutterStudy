
// null safety
void main() {
  String? name = 'potato';
  name = 'apple';
  print(name.length);  // name?.length (null이 될 수도 있다면)
}

// constant 변수: 컴파일 시점에 값이 정해져 있어야. Dart에만 존재(컴파일 시 상수로 치환)
// final 변수: JS나 다른 언어의 constant와 동일.

