FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Instalar módulos: APK/Android Nativo, Seguridad Anti-Hacker, Multi-GPU y Entorno
RUN rpm-ostree install \
    waydroid \
    android-tools \
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
