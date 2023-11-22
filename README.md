# login_example

### 실습의 목적 
로그인 페이지와 주사위 페이지로 구성된 스터디용 자료입니다. 이번 스터디 과제는 다음의 주제들을 포함합니다. 과제를 진행하면서 다음의 내용들을 익혀볼 예정입니다.
- Navigation 
- setState()
- asset 사용
- Lottie 파일 활용
- AfterLayout Package

### 실습 안내
- 해당 레포에는 실습에서 사용하는 에셋(이미지 및 애니메이션용 lottie 파일)이 기본적으로 제공 됩니다.
- 폴더 구조는 간단하게 screens, widgets으로 구성됩니다.
- 기본적으로 screen 파일들이 있으니 screen 파일부터 과제를 시작하면 됩니다.
- 강요되는 구조나 사용해야하는 위젯에는 제한이 없으니 자유롭게 원하는대로 구현해주세요.

### 구현 내용
- login 페이지를 만들고 ID,PW를 사용자로부터 입력받은 뒤 Dice 페이지로 이동하는 코드를 구현합니다.
- Dice 페이지 내 AppBar에서는 이전 페이지에서 전달받은 사용자의 ID를 출력해야합니다.
- Dice 페이지에서는 사용자가 주사위 굴리기 버튼을 클릭하여 출력되는 주사위 이미지를 바꿀 수 있습니다.(setState 활용)

### 추가 구현(옵션)
- 유저가 ID/PW를 입력하고 Dice 페이지로 이동하면 Dialog를 열어서 환영 메세지를 출력합니다.
- ID/PW 둘중 하나가 입력되지 않았다면 Dialog/Snackbar/Toast를 띄워서 ID/PW를 입력해달라는 메세지를 출력할 수 있습니다.

### 구현 예제
<img width="300" alt="login_screen" src="https://github.com/pendant-k/flutter-login-study/assets/54224868/65950c67-b527-4d69-9be4-08d339d75759">

<img width="300" alt="dice_screen" src="https://github.com/pendant-k/flutter-login-study/assets/54224868/156e2d06-dc3d-40a1-95e7-80d65d44c633">

<img width="300" alt="dice_dialog" src="https://github.com/pendant-k/flutter-login-study/assets/54224868/5dba355d-0b2a-4b28-8c10-bab46ae04ae0">

### 참고 자료
- Lottie는 Animation 파일 형식입니다. json 파일 확장자로 gif 파일처럼 애니메이션을 어플리케이션에 넣을 때 활용합니다.
gif 파일보다 용량이 낮아서 다양한 애니메이션을 부담없이 어플리케이션에 적용할 수 있습니다. Flutter에서는 lottie 파일을 사용하기 위해 Lottie 패키지가 필요합니다.

[Lottie 공식페이지](https://airbnb.io/lottie/#/)  
[Flutter Lottie 패키지](https://pub.dev/packages/lottie)  

- AfterLayout Package를 사용하면 특정 위젯이 로딩된 이후 곧바로 필요한 함수를 실행할 수 있습니다. 이를 활용해서 로그인 이후 주사위 페이지로 이동하면 바로 Dialog가 출력되도록 구현해볼 수 있습니다. (주의: `initState()` 내에서 `showDialog()`를 사용하면 에러가 발생합니다)

[Flutter AfterLayout 패키지](https://pub.dev/packages/after_layout)
