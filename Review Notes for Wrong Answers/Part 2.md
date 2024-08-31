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
