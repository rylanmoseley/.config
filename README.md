# Rylan's Arch Linux config

my dotfiles for my Arch Linux system, running Hyprland

## Structure

``` text
.config/
├───apps/
│   ├───[app config directories]
│   └───installconfig.sh
├───scripts/
│   ├───bootstrap/
│   └───launcher/
├───system/
│   ├───systeminfo.txt
│   ├───updatesysinfo.sh
│   ├───config/
│   │   └───[system config directories]
│   └───packagelists/
│       ├───allpackages.txt
│       ├───install.sh
│       ├───update.sh
│       ├───aur/
│       │   ├───packages.txt
│       │   ├───install.sh
│       │   └───updatelist.sh
│       ├───flatpak/
│       │   ├───packages.txt
│       │   ├───install.sh
│       │   └───updatelist.sh
│       └───pacman/
│           ├───packages.txt
│           ├───install.sh
│           └───updatelist.sh
├───workflows/
│   └───[notes and diagrams on configured workflows]
└───README.md
```

### apps/

contains configuration files for various applications I use, along with an `installconfig.sh` script to set them up.

### scripts/

contains a bootstrap script to set up the system, and a launcher script to launch applications.

#### launcher/

Run from `.zprofile`, this script parses the `launchscripts` directory and launches the chosen window manager with the appropriate configuration.

### system/

contains system information, a script to update system info, and directories for system configuration and package lists.

#### system/packagelists/

contains package lists for different package managers, along with scripts to install and update packages.

### workflows/

contains notes and diagrams on configured workflows.
