echo '[mesa-git]' >> /etc/pacman.conf
echo 'SigLevel = Never' >> /etc/pacman.conf
echo 'Server = https://pkgbuild.com/~lcarlier/$repo/$arch' >> /etc/pacman.conf
mhwd-kernel -i linux53
pacman -Syy
pacman -S --overwrite '*' mesa-git lib32-mesa-git vulkan-radeon-git llvm-libs-git
chown 1000:1000 /run/user/1000/dconf/user
