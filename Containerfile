FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Instalar módulos de seguridad, Multi-GPU y entorno Devin
RUN rpm-ostree install \
    firewalld \
    clamav \
    bubblewrap \
    wine \
    winetricks \
    fastfetch \
    git \
    curl \
    python3-pip && \
    ostree container commit
