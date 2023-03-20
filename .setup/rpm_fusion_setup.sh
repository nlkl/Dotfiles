if dnf repolist | grep -q rpmfusion-free; then
    echo "RPM Fusion Free already enabled."
else
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
fi

if dnf repolist | grep -q rpmfusion-nonfree; then
    echo "RPM Fusion Nonfree already enabled."
else
    sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
fi

