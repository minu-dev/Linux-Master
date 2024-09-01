*Review Notes for Wrong Answers*
# **Part II. 리눅스 시스템 관리**
## **Chapter 01. 일반 운영 관리**

<br>

1. 다음 설명과 같은 경우에 실행하는 명령으로 가장 알맞은 것은?

|ihduser의 패스워드를 오랜 시간 변경하지 않아 임의로 패스워드를 만료 설정한다.|
|:--|
- [ ] passwd -d ihduser
- [x] passwd -e ihduser
- [ ] passwd -l ihduser
- [ ] passwd -r ihduser
```
-d : 패스워드 삭제 옵션
-e : 패스워드 만료 옵션
-l : 패스워드 락 옵션
-r : 저장소(리포지토리)의 암호 변경 옵션
이외의 옵션들에 대한 설명은 교재의 p.221 참고할 것.
```
<br><br>
2. 다음 설명에 해당하는 명령으로 알맞은 것은?

|애플리케이션은 /lib/libudev.so.0 라이브러리를 링크하고 있다. 실제로 이 라이브러리는 /lib/libudev.so.0.5.1을 링크하고 있다. 최근 몇 가지 버그가 수정된 /lib/libudev.0.5.2 버전을 애플리케이션 수정 없이 적용하려 한다.|
|:--|
- [ ] ln -h /lib/libudev.so.0 /lib/libudev.so.0.5.2
- [ ] ln -s /lib/libudev.so.0 /lib/libudev.so.0.5.2
- [ ] ln -h /lib/libudev.so.0.5.2 /lib/libudev.so.0
- [x] ln -s /lib/libudev.so.0.5.2 /lib/libudev.so.0
```
소프트 링크의 장점 중 하나인 링크의 목적지를 변경하여 애플리케이션 수정 없이도 라이브러리를 업데이트 하는 개념이 적용된 문제임.
ln 명령어의 순서는 ln -s [타겟 파일] [링크 적용 파일] 임을 유의할 것.
```
<br><br>
3. 다음은 rpm 명령을 이용해서 httpd 패키지를 제거하는 과정이다. (   ) 안에 들어갈 내용으로 알맞은 것은?

|```# rpm (ⓐ) httpd```<br>```error: Failed dependencies```<br>```httpd >= 2.2.0 is needed by (installed)```<br>```gnome-user-share-2.2.28.2-3.el6.i686```<br>```# rpm (ⓐ) httpd (ⓑ)```|
|:--|
- [ ] ⓐ -e   ⓑ --force
- [x] ⓐ -e   ⓑ --nodeps
- [ ] ⓐ -r   ⓑ --nodeps
- [ ] ⓐ -r   ⓑ --force
```
첫번째 삭제 시도에서 의존성 문제로 인해 패키지가 삭제되지 않았음.
두번째 시도에선 의존성을 무시하고 삭제 시도해야 함.
따라서 ⓐ는 -e, ⓑ는 --nodeps 가 되어야 함.
참고로 rpm 명령의 --force 옵션은 기존에 패키지가 설치되어 있더라고 강제로 설치한다는 설치 관련 옵션임.
```
<br><br>
4. vi 편집기를 이용하여 사용자 혹은 그룹의 디스크 쿼터를 설정하는 명령으로 알맞은 것은?
- [ ] quota
- [x] edquota
- [ ] repquota
- [ ] quotacheck
```
quota : 사용자의 디스크 사용량과 쿼터 정보 출력
edquota : 사용자 및 그룹을 위한 쿼터를 편집. 기본값으로 vi 에디터를 통해 열림.
repquota : 사용자 및 그룹의 파일 시스템 사용량과 쿼터의 정보 출력
quotacheck : 쿼터 기록 파일 생성 혹은 기존의 파일 갱신
쿼터 관련 명령어는 교재의 p.300 참고할 것.
```
<br><br>
5. 시스템에 로그인한 사용자의 ID들을 출력하는 명령으로 알맞은 것은?
- [ ] w
- [ ] who
- [ ] whoami
- [x] lslogins
```
w : 현재 로그인한 사용자가 어떤 시스템에서 로그인 했는지, 어떤 프로세스를 실행하고 있는지 출력
who : 현재 호스트에 로그인 된 모든 사용자의 정보 출력
whoami: 현재 로그인한 사용자의 사용자명을 출력
lslogins : 시스템의 전체 사용자를 출력
사용자 및 그룹 정보 관련 명령어는 교재의 p.238 참고할 것.
```
<br>

- - -

## **Chapter 02. 장치 관리**

<br>

1. 다음 중 리눅스 커널에 대한 설명으로 틀린 것은?
- [x] 리눅스는 시스템 자원의 관리 역할을 프로그램에게 위임한다.
- [ ] 리눅스 커널 버전 확인은 'uname -r' 명령으로 할 수 있다.
- [ ] 리눅스 커널은 HAL(Hardware Abstract Layer)을 이용하여 하드웨어 자원을 간접적으로 접근할 수 있도록 한다.
- [ ] 커널 컴파일은 커널 소스를 이용하여 시스템에 최적화된 커널을 만드는 과정이다.
```
리눅스는 시스템 자원의 소유 및 관리 역할을 커널이 수행함.
```
<br><br>
2. 다음에서 설명하는 명령으로 알맞은 것은?

|커널 컴파일할 때 설정된 작업을 초기화하기 위해 사용하는 명령으로 오브젝트 파일뿐만 아니라 설정된 환경 파일인 .config 파일까지 지우는 명령이다. 또한 추가로 <ins>백업 및 배치 파일까지</ins> 모두 제거한다.|
|:--|
- [ ] make clean
- [ ] make depmod
- [ ] make mrproper
- [ ] make distclean
```
환경설정 파일까지 지우는 건 mrproper, 백업 및 배치 파일까지 지우는 건 distclean 임을 기억할 것.
```
<br><br>
3. 다음 결과에 해당하는 명령으로 알맞은 것은?
<div align="left">
<img src="/Review%20Notes%20for%20Wrong%20Answers/Images/lspci.png" width="500px">
</div>

- [x] lspci
- [ ] lsmod
- [ ] lsblk
- [ ] lscgroup
```
lspci : 시스템 내 PCI 버스와 장치의 상세 정보를 출력
lsmod : 리눅스 커널에 있는 모듈들의 정보를 출력
lsblk : 블럭 장치 목록을 마운트 되지 않은 블럭 장치 포함해서 출력
lscgroup : cgroup을 나열하는 명령어로, cgroup이란 프로세스들이 사용하는 시스템의 자원의 사용 정보를 수집하고, 제한시키고, 격리시키는 리눅스 커널 기능
해당 결과는 시스템에 있는 PCI 장치 정보를 출력하고 있으므로 lspci 가 정답임.
```
<br><br>
4. 특정 모듈을 제거하면서 의존성있는 모듈을 같이 제거하려고 할 때 (   ) 안에 들어갈 옵션으로 알맞은 것은?

|# modeprobe (&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;) ip6table_filter|
|:--|
- [ ] -a
- [x] -r
- [ ] -d
- [ ] -e
```
-r 옵션이 모듈 제거 시 의존성 있는 모듈을 함께 제거하는 옵션임.
```
<br><br>
5. 'uname -r' 명령의 결과가 2.6.32-696.el6.i686이다. 다음 중 모듈 간의 의존성을 기록한 파일의 경로로 알맞은 것은?
- [ ] /etc/modprobe.d/2.6.32-696.el6.i686/modules.dep
- [ ] /usr/src/kernels/2.6.32-696.el6.i686/modules.dep
- [ ] /usr/local/src/2.6.32-696.el6.i686/modules.dep
- [x] /lib/modules/2.6.32-696.el6.i686/modules.dep
```
모듈 간 의존성 기록 파일은 /lib/modules/[커널 버전]/modules.dep 에 저장됨.
커널 버전은 uname -r 명령으로 구할 수 있으므로, 위의 [커널 버전]을 $(uname -r)으로 대체함.
```
<br>

- - -

## **Chapter 03. 시스템 보안 및 관리**

<br>

1. 다음은 GRUB 패스워드를 설정하는 과정의 일부이다. (   ) 안에 들어갈 내용으로 알맞은 것은?

|```# grub2-mkpasswd-pbkdf2```<br>```Enter password: ```<br>```Reenter password: ```<br>```PBKDF2 hash of your password is grub.pbkdf2.sha512.10000.F39E12CBCDDA05C49B0B3686B0912CF210A4CB59B1C419DDA13A72EC5D49352569DD9D597AC3F06F7A40EE1637917BA4126000717E50492D1E6187088E8D6782.6521498C3085A8CD4E1025B008461F6517F0C1A7906A214067B650DB4ECCF95F75E0A1722735F52B29AD67C227A6BF66B7D3F9BCDCBC76DC391590AFE85FA59D```<br>```# vi /etc/grub.d/40_custom```<br><br>```#!/bin/sh<br>exec tail -n +3 $0```<br>```set superusers="root"```<br>```(   ) root grub.pbkdf2.sha512.10000.F39E12CBCDDA05C49B0B3686B0912CF210A4CB59B1C419DDA13A72EC5D49352569DD9D597AC3F06F7A40EE1637917BA4126000717E50492D1E6187088E8D6782.6521498C3085A8CD4E1025B008461F6517F0C1A7906A214067B650DB4ECCF95F75E0A1722735F52B29AD67C227A6BF66B7D3F9BCDCBC76DC391590AFE85FA59D```|
|:--|
- [x] password_pbkdf2
- [ ] password
- [ ] password_sha512
- [ ] password_pbkdf2_sha512
```
GRUB2를 통해 패스워드를 해시 값을 통해 암호화하는 개념임.
grub2-mkpasswd-pbkdf2 : 패스워드의 해시 값을 생성함.
그런 다음 /etc/grub.d/40_custom 파일에 해당 해시 값을 넣어야 한다.
이 때, 암호화 된 패스워드일 경우 괄호 안에 password_pbkdf2가 들어가야 하고, 암호화되지 않았을 경우엔 password가 들어간다.
따라서 정답은 1번이다.
```
<br><br>
2. 다음 중 각 계정에 대한 마지막 로그인 정보를 확인할 수 있는 명령으로 알맞은 것은?
- [ ] last
- [ ] lastb
- [x] lastlog
- [ ] dmesg
```
last : 과거의 로그인 상황 점검. /var/log/wtmp 파일 참조.
lastb : 과거의 잘못된 로그인 시도한 계정에 대한 정보. /var/log/btmp 파일 참조
lastlog : 각 계정에 대한 마지막 로그인 정보 출력.
dmesg : 부팅 시 커널 링 버퍼에 출력되었던 로그가 기록되는 파일. 보통 커널 부트 메시지라고 함.
```
<br><br>
3. 다음 중 cat 명령으로 텍스트 모드로 열람이 가능한 로그 파일로 옳은 것은?
- [ ] wtmp
- [ ] btmp
- [ ] lastlog
- [x] secure
```
각 파일 열람에 wtmp는 last 명령이, btmp는 lastb 명령이, lastlog는 lastlog 명령이 필요함.
따라서 정답은 secure.
```
<br><br>
4. 다음 중 rsync 명령에 관한 설명으로 틀린 것은?
- [ ] 네트워크로 연결된 원격지의 파일들을 동기화하는 유틸리티이다.
- [x] ssh나 rsh를 이용하여 전송 가능하고 루트 권한이 필요하다.
- [ ] rcp에 비해 처리속도가 우수하고 다양한 기능을 제공한다.
- [ ] 로컬 시스템 백업 시에는 별다른 서버 설정 없이 사용이 가능하다.
```
rsync 명령은 루트 권한이 필요 없음.
나머지 설명은 다 맞는 말.
```
<br><br>
5. 다음 설명하는 내용에 알맞은 것은?

|2004년 레이너 게르하드를 주축으로 오픈소스 프로젝트로 시작되었다. IP 통신을 통한 로그 기능 구현을 목적으로 하였다. <U>멀티 쓰레드</U>를 지원하고, TCP, SSL, TLS, RELP 프로토콜을 지원하며, MySQL, PostgreSQL, Oracle과 같은 데이터베이스도 지원한다. 로그 목록 제한, 로그 필터링, 다양한 출력 포맷 기능을 제공한다.|
|:--|
- [ ] logrotate
- [x] rsyslog
- [ ] lastlog
- [ ] vsyslog
```
멀티 쓰레드, RELP 프로토콜 키워드가 나온다? → rsyslog
rsyslog : 리눅스 초기의 syslog 대체하여 성능 강화한 로그 기록 패키지
logrotate : 로그 파일로 인해 시스템의 저장소가 꽉 차는 것을 막고 디스크 공간을 효율적으로 사용할 수 있도록 하는 유틸리티
lastlog : 각 계정에 대한 마지막 로그인 정보 출력
vsyslog : syslog와 동일한 작업을 수행하지만 가변 인수 집합을 사용한다는 차이점
```
<br><br>
6. 다음 중 가장 최근에 시스템이 재부팅된 정보를 두 개의 항목으로 출력하려 할 때 알맞은 명령은?
- [ ] lastb -2 reboot
- [ ] lastb -L 2 reboot
- [x] last -2 reboot
- [ ] last -L 2 reboot
```
일단, lastb는 로그인 실패 기록을 출력하는 명령이므로 1번과 2번은 정답에서 배제됨.
last 명령에 L 옵션은 존재하지 않고, -n [숫자] 혹은 -[숫자] 옵션을 통해 몇 줄을 출력할 지 지정할 수 있음.
따라서 정답은 3번임.
last 명령의 옵션에 대한 설명은 교재의 p.410 참고할 것.
```
<br><br>
7. 다음 중 sudo에 관련된 설명이 아닌 것은?
- [ ] 특정 사용자 또는 특정 그룹에 루트 사용자 권한을 가질 수 있게 하는 도구이다.
- [x] 환경설정 파일을 편집할 때 전문 편집 도구인 vi 명령어를 사용하는 것이 안전하다.
- [ ] 적용된 사용자는 'sudo [명령어]' 형태로 실행하며 루트 권한을 대행한다.
- [ ] 환경설정 파일은 /usr/bin/sudo이다.
```
sudo의 환경설정 파일을 안전하게 편집하기 위해선 전용 편집 도구인 visudo를 사용해야 함,
나머지 설명은 다 맞는 말.
```
<br><br>
8. 다음 설명에 알맞은 것은?

|시스템이 부팅할 때 커널 링 버퍼에 출력되었던 로그가 기록되는 파일로, 보통 커널 부트 메시지 로그라고 한다.|
|:--|
- [ ] /var/log/secure
- [ ] /var/log/lastlog
- [ ] /var/log/wtmp
- [x] /var/log/dmesg
```
/var/log/secure : 원격접속 정보를 기록한 로그
/var/log/lastlog : 각 계정에 대한 마지막 로그인 정보, lastlog 명령에 의해 참조됨.
/var/log/wtmp : 과거의 로그인 상황 정보, last 명령에 의해 참조됨.
/var/log/dmesg : 부팅 시 시스템에 의해 기록되는 로그는 커널 링 버퍼에 축적되었다가 최종적으로 /var/log/dmesg 파일에 기록됨. dmesg 명령어로 내용 확인 가능.
```
