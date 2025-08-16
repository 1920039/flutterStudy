import 'package:flutter/material.dart';
import 'package:toonflix/currencycard.dart'; // 이 줄은 자동생성되었음.

void main() {
  runApp(const MyApp()); // MyApp()은 우리 앱의 root, 즉 시작점. 모든 것이 여기 담김
}

class MyApp extends StatelessWidget {
  // Stateful, Stateless, Inherited 셋 중 하나를 상속
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // home: 랜딩 페이지
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          // 전체 화면이 아래 스크롤 가능하게 함
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ), // 'inset'은 안쪽으로 들어감. 참고로 'margin'은 바깥 쪽 여백.
            child: Column(
              // 앱인벤터의 '수직배치'
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Row(
                  // 앱인벤터의 '수평배치'
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withAlpha(180),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      text: 'Transfer',
                      bcColor: Color(0xfff1b33b),
                      textColor: Colors.black,
                    ),
                    MyButton(
                      text: 'Request',
                      bcColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Text 박스 둘 사이에 공간을 띄울 때
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        // 위의 Text는 const인데, 여기 Text는 const가 아닌 이유:
                        color: Colors.white.withAlpha(
                          180,
                        ), // withAlpha()는 메서드 호출인데, 컴파일 시 메서드는 모두 런타임으로 넘김
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CurrencyCard(
                  // 이 클래스는 별도 파일에 정의되어 있음. 이 코드 맨 위에서 import했음(import 코드가 자동 생성되었음)
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  // 이 카드가 위의 Euro 카드에 살짝 겹치도록 위로 옮김
                  offset: const Offset(0, -20), // x축, y축인데, y축은 위가 (-)
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(
                    0,
                    -40,
                  ), // -20이 아니라 -20-20만큼 이동(translate은 Bitcoin 카드의 '원래 위치'에 영향을 미치지 않았음)
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined, // 'dollar'라는 아이콘은 없음!
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Color bcColor;
  final Color textColor;

  const MyButton({
    super.key,
    required this.text,
    required this.bcColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bcColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 22)),
      ),
    );
  }
}

/*
● 3.1 DevTools: Debug 모드를 먼저 실행시킨 다음, 화면 좌측 세로줄 중간 끝 버튼.
  - '위젯 선택 모드', '가디으 라인 표시', 'Flex explorer'

● 3.2 저장 시 'const' 붙이기 등 정리
  ① 공통: 좌하 설정 > Command Palette > open user settings(json) > settings.json 파일 설정
  ② 프로젝트별: analysis_options.yaml 파일에도 설정 필요

● 노란 전구: Extract Widget 기능 등등...
  
● emulation 했을 때 화면 아래에 공간이 부족하여 노랑+까망 줄이 생기면 그냥 Ctrl +- 버튼으로 화면을 줌아웃하면 해결됨
   → 보다 근본적인 해결책은 scroll을 넣는 것 ====> body: SingleChildScrollView( )

*/
