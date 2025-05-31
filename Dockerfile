FROM mysterysd/wzmlx:v3

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN wget https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.3.0-beta/N_m3u8DL-RE_v0.3.0-beta_linux-x64_20241203.tar.gz \
    && mkdir -p /opt/n_m3u8dl \
    && tar -xzf N_m3u8DL-RE_v0.3.0-beta_linux-x64_20241203.tar.gz -C /opt/n_m3u8dl \
    && mv /opt/n_m3u8dl/N_m3u8DL-RE /usr/local/bin/ \
    && chmod +x /usr/local/bin/N_m3u8DL-RE \
    && rm N_m3u8DL-RE_v0.3.0-beta_linux-x64_20241203.tar.gz \
    && rm -rf /opt/n_m3u8dl

RUN uv venv --system-site-packages

COPY requirements.txt .
RUN uv pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

