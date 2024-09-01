*Summary Note*
# **Part III. 네트워크 및 서비스의 활용**
## **Chapter 01. 네트워크 서비스**
### **Section 01. 웹 관련 서비스**
- **웹 서버**
  - 현재 많이 사용하는 웹 서버
    - Apache
    - 마이크로소프트 사의 IIS
    - Nginx
    - 구글의 GWS
- **HTTP 요청 메소드**
  - GET : 서버에서 자료를 **가져오는** 요청, 조회
  - POST : 서버에 정보를 **저장, 등록**
  - PUT : 서버에 자료를 **올림, 수정**
  - DELETE : 서버의 자료를 **삭제**
- **HTTP 응답**
  - 403 : Forbidden
  - 404 : Not Found
- **Apache 2.x**
  - **MPM** : 하나의 프로세스가 다수의 클라이언트 요청 처리
    - 주요 MPM 모듈 :
      - **prefork** : 서브스 요청이 많게 되면 **프로세스 수가 증가**
      - **worker** : **초기에** 시작하는 **프로세스의 개수** 지정, **페이지 요청 들어오면 스레드로 처리**,
                     **스레드 수 초과**할 경우 **새로운 자식 프로세스 생성**
- **/etc/httpd/conf/httpd.conf**
  - 아파치 웹 서버의 주요 환경 설정 파일
    - ```ServerName [도메인명:포트]``` → 가장 먼저 설정해야 할 항목
      - e.g.) ```ServerName 192.168.5.13:80```
    - ```DocumentRoot [디렉터리 경로]``` → 웹 문서를 **저장**할 디렉터리
    - ```Listen [포트 번호]``` → 아파치 웹 서버가 사용할 TCP 포트, Port, http_port, http_listen이 아님을 주의할 것
    - ```LoadModule [모듈 이름]``` → **모듈 활성화**, AddType이나 AddModule이 아님을 주의할 것
- **http 명령을 이용한 Apache 웹 서버 실행**
  - ```http -t``` : httpd.conf의 문법적 오류 검사 (test)
