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
