// Flutter 특징: OS와 직접 '대화'하지 않음(native들은 그렇게 함). 이 역할은 엔진이 담당
// OS가 제공하는 위젯을 (그대로?) 사용하려면 React Native가 유리, 모든 것을 customize하려면 Flutter가 유리
// 프로젝트 만들기: 파워쉘에서 flutter create xx → cd xx → code .

import 'package:flutter/material.dart'; // MaterialApp을 쓰기 위한 라이브러리

void main() {
  runApp(
    const MyApp(),
  ); // runApp()에 넣는 위젯이 앱의 루트(root) 위젯, 즉 시작점이 되고, 모든 것이 여기 담김
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // class를 위젯으로 만들려면 flutter 3개의 core 위젯 중 하나를 상속(extend)받아야 함
  // {super.key}는 부모 생성자의 key 매개변수에 값을 전달(':' 방식 대신 사용하는 최신 문법)

  @override
  Widget build(BuildContext context) {
    // 모든 위젯은 build 메소드를 구현해야 함. build가 return하는 것은 그게 뭐든 화면에 보여짐
    return MaterialApp(
      // 안드로이드 스타일. iOS 스타일은 CupertinoApp
      home: Scaffold(
        // 홈 화면에서 뭘 보여줄지
        // 모바일 앱의 모든 화면에는 Scaffold가 필요: 화면 구조를 잡아주는 기본 틀
        appBar: AppBar(
          // 앞의 appBar는 앱바에 뭘 넣을지를 의미, 뒤의 AppBar는 특정 클래스(UI 컴포넌트)의 이름
          title: const Text('flutter 101'),
        ),
        body: const Center(child: Text('Hello World')), // 가로, 세로 모두 중앙
      ),
    );
  }
}

// 위에서 home:, appBar:, title:, body:... 이런 것들은 named params
// 위에서 build(), MaterialApp(), Scaffold()... 이런 것들은 생성자. 클래스 값을 초기화하고 있음.
// 위에서 생성자 안에 든 것들, Text('flutter 101'), Text(..).. 이런 것들은 positional params
// param은 정의할 때, argument는 actual 값을 넣을 때

// 자동 포맷 적용하는 법(trailing comma)
// File > Preference > Settings > Format on Save를 체크함 = 저장하면 자동 포맷이 적용됨
// 수동으로: Shift + Alt + F
