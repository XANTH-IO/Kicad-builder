FROM ghcr.io/inti-cmnb/kicad9_auto_full:1.8.4

RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends \
    python3 python3-pip \
    python3-venv \
    libreoffice \
    && rm -rf /var/lib/apt/lists/*

ADD requirements.txt /root/
ADD rework-bom.py /root/
