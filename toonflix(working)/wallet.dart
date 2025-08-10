import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // App()은 우리 앱의 root, 즉 시작점. 모든 것이 여기 담김
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // class를 위젯으로 만들려면 flutter 3개의 core 위젯 중 하나를 상속(extend)받아야 함
  @override
  Widget build(BuildContext context) {
    // 모든 위젯은 build 메소드를 구현해야 함. build가 return하는 것은 그게 뭐든 화면에 보여짐
    return MaterialApp(
      // 안드로이드 스타일. iOS 스타일은 CupertinoApp
      home: Scaffold(
        // 홈 화면에서 뭘 보여줄지
        // 모바일 앱의 모든 화면에는 Scaffold가 필요
        backgroundColor: const Color(0xFF181818), // 거무스리한 색. '0xFF' + 색상 이름
        body: Padding(
          // 오른쪽, 왼쪽에 공간을 떼기 위해
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                // 맨 위로부터 공간을 뗌
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 끝으로 정렬
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .end, // 박스 안에서 우측 정렬(Column 내부라서 Cross는 좌우를 의미)
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'welcome back',
                        style: TextStyle(
                          color: Colors.white.withAlpha(180),
                          fontSize:
                              18, // withOpacity(0)는 deprecated. opacity 0 투명, 255 불투명
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 120),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withAlpha(180),
                ),
              ),
              const SizedBox(height: 5), // 'Total Bal.'와 $ 금액 사이 여백을 넣기 위한 박스
              const Text(
                '\$5 194 482', // '$'는 변수 앞에 쓰이므로 문자 자체를 사용하려면 '\'를 붙임
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30), // $ 금액과 버튼 사이 여백을 넣기 위한 박스
              Row(
                children: [
                  Container(
                    // HTML의 div처럼 묶어주는 역할: BoxDecoration()과 Padding()을 따로 쓸 수 밖에 없는 상황
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      // 패딩을 쓰려면 이렇게 Padding 안에 padding과 text를 넣게 되어 있음.
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text('Transfer', style: TextStyle(fontSize: 22)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
