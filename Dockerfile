FROM ghcr.io/inti-cmnb/kicad8_auto_full:latest

RUN apt-get update --fix-missing && apt-get -y upgrade
RUN apt-get install -y --no-install-recommends \
    python3 python3-pip \
    python3-venv \
    libreoffice \
    && rm -rf /var/lib/apt/lists/*

ADD requirements.txt /root/
ADD rework-bom.py /root/
