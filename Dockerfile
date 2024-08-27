FROM ubuntu

RUN apt update -y && apt install -y wget python3 gnupg2

RUN wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

RUN apt install -y ./vscode.deb

EXPOSE 8080

CMD code serve-web --host 0.0.0.0 --port 8080 --without-connection-token