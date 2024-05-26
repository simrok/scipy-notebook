# Base 이미지 설정
FROM quay.io/jupyter/scipy-notebook:latest

# root 사용자로 변경하여 git을 설치
USER jovyan

# git 설치
RUN apt-get update && apt-get install -y git && apt-get clean

# 작업 디렉토리 설정
WORKDIR /home/jovyan/work

# GitHub 리포지토리 클론 및 파일 복사
RUN git clone https://github.com/simrok/scipy-notebook.git /tmp/scipy-notebook \
    && cp /tmp/scipy-notebook/README.md /home/jovyan/work/ \
    && rm -rf /tmp/scipy-notebook

# 주피터 포트 노출
EXPOSE 8888

# 컨테이너 시작 시 실행할 명령어 설정
ENTRYPOINT ["start-notebook.sh"]


