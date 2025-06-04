git add .
# .은 모든 변경사항을 의미. 특정변경 특정파일만 add시키는 것도 가능
# add는 staging area로 변경사항을 이동함을 의미미

# commit은 변경사항을 확정짓고, 변경이력(commitID) 발생
# commit시에 staging area는 비워지고, local repository에 변경이력 발생 
git commit -m "메시지"

# origin : 원격의미미
git push origin main

# github인증방법 2가지
# 1.직접토큰발급 2. 웹을 통한 인증(vscode, intellij 등을 통해)

# git프로젝트 생성방법2가지
# 1. 원격에서부터 repo생성 후 clone
# 2. local에서부터 프로젝트 생성 후 github에 업로드
# 2-1) .git폴더를 생성
git init
# 2-2) 원격지 주소를 추가 
git remote add origin 레포주소

# 다른repo에서 클론을 받아 나의 github으로 올리기
# 1. 커밋이력 그대로 가져가기
git clone 타인repo주소
git remote set-url origin 본인repo주소
git push origin main
# 2. 커밋이력 없이 가져가기
git clone 타인repo주소
.git폴더 삭제
git init
git remote add origin 본인repo주소
git checkout -b main # main을 만드면서 main으로 switch
add commit push

# 사용자지정
# 전역적 사용자지정(이름, email)
git config --global user.name "유저명"
git config --global user.email "이메일명"
# git설정정보 조회
git config --list

# .gitignore파일은 git추적 목록에서 제외
# 경로 : root경로에서부터 시작. ex) testfolder/important_config.yml
# 만약 이미 git에서 추적되고 있는 파일은 캐시 삭제 필요
git rm -r --cached .