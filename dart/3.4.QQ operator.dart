String Capitalize(String? name) =>
    name?.toUpperCase() ?? '이름 안 갈쳐줌'; // null이 아니면 왼쪽 실행, null이면 오른쪽 실행

void main() {
  print(Capitalize(null));
}
