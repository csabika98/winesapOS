# Change Log

## 3.1.0

- Change ProtonUp-Qt to be installed as a Flatpak.
- Change Cheese to be installed as a Flatpak.
- Change Discord to be installed as a Flatpak.
- Change Gwenview to be installed as a Flatpak.
- Change KeePassXC to be installed as a Flatpak.
- Change LibreOffice to be installed as a Flatpak.
- Change PeaZip to be installed as a Flatpak.
- Change OBS Studio to be installed as a Flatpak.
- Change Pix to be installed as a Flatpak.
- Change Protontricks to be installed as a Flatpak.
- Change VLC to be installed as a Flatpak.
- Change ClamTk and ClamAV to be installed as Flatpak.
- Change Transmission to be installed as a Flatpak.

## 3.0.1

- Add option to build winesapOS on bare-metal.
- Add option for the build to create a raw image file instead of using an existing block device.
- Add support for installing directly onto a NVMe or loopback block storage device.
- Change Bottles to be installed as a Flatpak.
- Change Steam to be installed as part of the first-time setup.
- Add documentation in the read me file for doing customized installations on bare-metal.
- Change the Minecraft launcher from MultiMC to PolyMC and have it installed as a Flatpak.
- Change swap to be created during first-time setup.
- Change makepkg to compile using the number of available processor cores.

## 3.0.0

- Change project name from "Mac Linux Gaming Stick" to "winesapOS".
- Change the user account name from "stick" to "winesap".
- Add support for installing Arch Linux.
- Change the office suite from FreeOffice to LibreOffice.
- Add support for installing the KDE Plasma desktop environment.
- Add LTS Linux kernel 5.15.
- Add MultiMC for playing Minecraft.
- Remove TLP. This power management utility conflicts with auto-cpufreq.
- Change GRUB menu to allow booting different Linux kernels by default.
- Add the pamac package manager.
- Change exFAT utilities from 'exfat-utils' to 'exfatprogs' to provide better exFAT support.
- Change the audio drivers from Alsa, Jack, Pulse, and v4l2 to PipeWire.
- Add support for the NTFS file system.
- Add support for the ZFS file system.
- Add support for the APFS file system.
- Change input devices to be more responsive.
- Add the Transmission torrent client.
- Add new Mac sound driver for Linux 5.15.
- Add desktop shortcuts for all GUI applications.
- Change the I/O scheduler to be "none" for better performance on flash-based storage devices.
- Add KeePassXC as a cross-platform password manager.
- Add VeraCrypt as a cross-platform encryption utility.
- Change the firewalld service to be enabled on the secure image.
- Add gamescope to help with playing older games.
- Add MangoHUD for benchmarking OpenGL and Vulkan games.
- Add GOverlay as a GUI for managing Vulkan overlays including MangoHUD, ReplaySorcery, and vkBasalt.
- Add a README.txt file to the desktop linking to the winesapOS GitHub project.
- Add Clamtk as a GUI front-end to ClamAV.
- Add Discord for a gaming chat client.
- Add ZeroTier-GUI as a GUI front-end to ZeroTier One VPN.
- Add Ludusavi as a game saves file manager.
- Change Firefox to Firefox ESR for extra stability.
- Add support for installing SteamOS 3.
- Change Bluetooth provider from Blueberry to Blueman.
- Add the Vapor theme for KDE Plasma for SteamOS 3.
- Add support for the XFS file system.
- Add Open Broadcaster Software (OBS) Studio.
- Add ProtonUp-Qt for managing Proton.
- Remove ge-install-manager. The project has been archived.
- Change Proton GE version from Proton-6.5-GE-2 to GE-Proton7-8.
- Add PeaZip for an archive/compression utility.
- Add BalenaEtcher as an image flashing utility.
- Add support for resizing the root file system on NVMe drvies.
- Add Konsole as another terminal emulator on KDE Plasma.
- Add Bottles for installing any Windows program.
- Change the Steam client to use the Steam Deck client UI.
- Add a first-time setup script to the desktop and have it automatically start upon first login.
- Add support for NVIDIA graphics drivers.
- Add support for Intel OpenGL graphics drivers on SteamOS.
- Add support for changing the locale as part of the first-time setup.
- Add support for doing a system upgrade as part of the first-time setup.
- Add support for changing the time zone as part of the first-time setup.
- Add desktop shortcut for first-time setup and only have it run after the first login.
- Change the user account to require a password when using 'sudo'.
- Add an image gallery application for Cinnamon (Pix) and KDE Plasma (Gwenview).
- Add the Steam Big Picture theme for GRUB by LegendaryBibo.
- Change Google Chrome to be installed as part of the first-time setup.
- Change the installed variant of Wine from Staging to GE.
- Add an upgrade script to the desktop.
- Change Pamac plugins for AUR, Flatpak, and Snap to be enabled by default.
- Add winesapOS icon for winesapOS specific desktop shortcuts.
- Change Steam desktop shortcuts to have one for Steam Desktop client and the second for the Steam Deck client.
- Change Mac workarounds to only run if the hardware is detected as Mac.

## 2.2.0

- Change initramfs to now load more storage drivers sooner.
- Change Pacman ParallelDownloads from 1 to 5.
- Remove the machine-id so that it will be autogenerated on first boot.
- Remove the Proton GE tarball to save space.
- Change the upgrade script to not override the /etc/winesapos/VERSION file.
- Add logging to a file when running the upgrade script.
- Add configurable environment variables for the build.
- Add support for LUKS encryption.
- Add the Cheese webcam software.
- Add support for AppArmor.
- Add support for expiring the password for both the "root" and "stick" user.
- Add offline ClamAV database to image build.
- Add support for firewalld.
- Add support for disabling CPU mitigations in the Linux kernel.
- Add support for disabling Linux kernel updates.
- Add the Shutter screenshot tool.

## 2.1.0

- Change swap to be a file instead of a partition.
- Change and lower swap size from 8 GiB to 2 GiB.
- Remove/disable swap in the live installation environment.
- Add automatic logging for the installation script into the build.
- Add integration tests for all existing functionality.
- Add an upgrade script.
- Add a Btrfs subvolume for '/home' and a related upgrade.
- Add Btrfs compression with zstd and also TRIM/discard support to mounts along with a related upgrade.
- Change 'apple-bce' driver installation to be more reliable.
- Add start and end time to the install log file.
- Add Linux 5.4 as an alternative LTS kernel to 5.10.
- Change GRUB menu to show on boot.
- Add Heroic Games Launcher for Epic Games Store games.
- Change partition mounts from UUIDs to labels.
- Add desktop shortcuts.
- Add Proton GE package manager 'ge-install-manager' and Proton GE 6.5-2.
- Add 'protontricks'.
- Add Snapper configuration for '/home' backups/snapshots.
- Add 16 GB exFAT partition for normal flash drive usage.
- Add PulseAudio configuration to lower the volume which will helps Mac users.
- Add printer drivers and service.
- Add Oh My Zsh.

## 2.0.0

- Change from Ubuntu 20.04 to Manjaro.
- Add automated installation script for Manjaro.
- Add script and service to automatically resize the root partition on first boot.
- Add fast/optimized package manager mirrors.
- Add automatic configuration of the 'stick' and 'root' users.
- Change from 'apt-btrfs' to 'snapper' and 'snap-pac' for Btrfs backups.
- Add MacBook Bridge/T2 driver.
- Add GameMode.
- Add autocpu-freq to help battery life.
- Change README file to be more consolidated.
- Remove Ansible roles.
- Add VERSION file.
- Add minimum and recommended requirements.

## 1.2.1

- Add note about CrossOver Mac being based on an old version of Wine.
- Change the percentage of supported 64-bit games on macOS. It has increased.
- Change the percentage of supported Windows games on Linux. It has increased.

## 1.2.0

- Add support for built-in speakers on newer Macs.
- Change the percentage of supported 64-bit games on macOS. It has increased.
- Add notes about CrossOver Mac.
- Remove support for all distros except for Ubuntu.
- Add a changelog.
- Remove notes about installing a newer Linux kernel. Ubuntu 20.04.2 now ships a usable Linux kernel (5.8).
- Change the percentage of supported Steam games on Linux. It has increased.
- Add notes about the Apple M1 Arm-based processor.

## 1.1.0

- Add the missing supportability goal.
- Add notes on addressing wireless keyboard and mouse issues.

## 1.0.0

- Initial release.
