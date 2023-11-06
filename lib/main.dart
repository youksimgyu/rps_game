import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  /*
  1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  2. 컴퓨터가 낼 타입이 어떤 것인지 결정하는 함수
  3. 유저의 타입과 컴퓨터의 타입에 대한 결과를 출력하는 함수
   */
  print('가위, 바위, 보 중 하나를 입력하세요.');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  const selectList = ['가위', '바위', '보'];
  final computerInput = selectList[Random().nextInt(3)];

  print('유저: $userInput, 컴퓨터: $computerInput');
  print(getResult(userInput, computerInput));
}

String getResult(String userInput, String computerInput) {
  const cpuWin = '컴퓨터가 이겼습니다.';
  const userWin = '유저가 이겼습니다.';
  const draw = '비겼습니다.';
  String result = draw;

  switch (userInput) {
    case '가위':
      if (computerInput == '바위') {
        result = cpuWin;
      } else if (computerInput == '보') {
        result = userWin;
      }
    case '바위':
      if (computerInput == '보') {
        result = cpuWin;
      } else if (computerInput == '가위') {
        result = userWin;
      }
    case '보':
      if (computerInput == '가위') {
        result = cpuWin;
      } else if (computerInput == '바위') {
        result = userWin;
      }
    default:
      result = '올바른 값을 입력해주세요.';
  }

  return result;
}
