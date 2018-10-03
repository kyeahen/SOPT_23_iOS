## [iOS_HW1](https://github.com/kyeahen/SOPT_23_iOS/tree/master/Seminar1/iOS_HW1)

- iOS 화면 전환 이해하기

### [Review]

**Navigation**
>- iOS 화면 전환을 위해 사용되는 기법 중 가장 대표적인 방법
>- **계층적 구조의 뷰 워크플로우**를 구현하기 위해 사용
>- UINavigationController에 의해 관리됨

**UINavigationController**
>- UIViewController를 담을 수 있는 **Container ViewController**
>- **Navigation 스택을 사용**하여 다음 뷰 컨트롤러를 관리
>- 두 개의 뷰를 화면에 표시
>  1. Navigation 스택에 포함된 최상위 ViewController
>  2. 직접 관리하는 Navigation bar, Tool bar

**Navigation Stack**
>- ViewController를 담을 수 있는 배열
>- 가장 먼저 스택에 추가된 ViewController는 **RootViewController**이 된다.

**Modal**
>- 사용자의 이목을 끌기 위해 사용하는 화면 전환 기볍
>- 정보의 흐름을 가지고 화면을 이동하기보다는 **이목을 끌어야하는 화면**에서 사용
>- 되도록 단순하고 사용자가 빠르게 처리할 수 있는 내용을 표현
>- Navigation과 동일하게 화면이 스택에 쌓임

**Unwind Segue**
>- 사용자가 스토리보드에서 UIStoryboard Segue 엑션이 처음 실행된 장소로 돌아갈 수 있도록 함.
>- 자세한 사용법은 [여기](https://medium.com/@kyeahen/ios-unwind-segue-in-swift-e8ff0e7fbbcd)에 정리하였습니다.

<br>

## [iOS_HW2](https://github.com/kyeahen/SOPT_23_iOS/tree/master/Seminar1/iOS_HW2)

- isSelected, isHidden 속성 이해하기

### [Review]

**isSelected**
>- **UIControl**
>- 컨트롤이 **선택된 상태인지** 여부를 나타내는 Bool 값
>- 기본 값은 false <br><br>

**isHidden**
>- **UIView**
>- 뷰가 **숨겨졌는지** 여뷰를 결정하는 Bool 값
>- 기본 값은 false
>- 이 값은 수신자의 상태만 반영하고 뷰 계층 구조에서 수신자 조상의 상태를 고려하지 않음. <br>
> 따라서, 이 속성이 false 이지만 조상이 숨겨져 있으면 수신자 또한 숨겨져 있을 수 있음.

<br>

참조 
- https://developer.apple.com/documentation/uikit/uicontrol/1618203-isselected
- https://developer.apple.com/documentation/uikit/uiview/1622585-ishidden




