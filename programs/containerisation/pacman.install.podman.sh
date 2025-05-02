sudo pacman -Syu podman
sudo pacman -Syu fuse-overlayfs
which fuse-overlayfs

mkdir -p ~/.config/containers/
touch ~/.config/containers/storage.conf
cat <<'EOF' > ~/.config/containers/storage.conf
[storage]
  driver = "overlay"
  [storage.options]
    mount_program = "/usr/bin/fuse-overlayfs"
EOF
touch ~/.config/containers/registries.conf
cat <<'EOF' > ~/.config/containers/registries.conf
unqualified-search-registries=["docker.io"]
EOF

podman search docker.io/library/postgres

sudo pacman -S python-pipx 
pipx ensurepath
pipx install podman-compose
pipx ensurepath

podman-compose -f ./podman-compose.yaml up -d &> error.log 
