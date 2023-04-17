# Smart Earphone
## 프로젝트 개요

최근 이어폰은 다양한 기능과 세련된 디자인으로 인해 판매량과 사용자 수가 증가하고 있다. 하지만 이에 따라 발생하는 사고 사례를 보며 사용자의 안전을 고려한 기능이 필요하다는 요구가 생겨났다. 또한, 현재 코로나19로 인한 집단 감염 사례가 많아져서 체온 감지가 가능한 이어폰이 요구되고 있다.
이 프로젝트의 목표는 사용자의 안전과 생활 편의성을 고려하여 안전 기능과 체온 감지 기능이 탑재된 이어폰을 개발하는 것이다.

## 구현 기능

-   주변 소음 측정 기능: 주변 소음을 측정하여 이어폰의 음량을 자동으로 조절한다.
-   온도 측정 기능: 이어폰에 온도 센서를 장착하여 체온을 측정할 수 있다.

## 시스템 구성
![image](https://user-images.githubusercontent.com/67696918/232514719-1ecbbf18-69bc-47e0-b50e-12da62086ac7.png)
### 가상 센서

-   온도 센서: 1~40의 랜덤값을 생성하여 MQTT로 publish.
-   소음 센서: 0~100의 랜덤값을 생성하여 MQTT로 publish.

### MQTT 통신

-   MQTT Broker: 네트워크 허브 역할을 수행하며, 메시지 필터링, 우선순위 결정, 분배 수행, Client 초기화 및 통신 초기화를 위한 핸드쉐이킹 절차 담당.
-   Mosquitto: MQTT 프로토콜 버전 5.0, 3.1.1 및 3.1을 구현하는 오픈소스 메시지 브로커. 가볍고 저전력 단일 보드 컴퓨터에서 전체 서버에 이르는 모든 장치에 사용하기 적합함.
-   MQTT Publisher: topic을 사용하여 데이터를 발행하는 기능. JSON 형식을 사용하여 메시지를 발행함.

Mosquitto 서버를 실행하고, MQTT Publisher로 데이터를 발행하면 해당 topic을 구독하는 Subscriber에서 결과를 확인할 수 있음.

### MongoDB & Socket 통신
- MongoDB를 이용해 Eclipse의 IoTServer에서 센서 데이터를 저장하고, Robo 3T를 사용해 저장된 데이터를 확인. 소켓을 이용해 3000번 포트와 연결하고, 데이터를 주고받음.

## 상황 별 웹 화면
![image](https://user-images.githubusercontent.com/67696918/232515293-a6d9b9a4-b6b2-4348-a614-88c4edc0a7fa.png)

![image](https://user-images.githubusercontent.com/67696918/232515319-39815537-6cbe-4865-8c38-85f5ee60dae0.png)


