# DEVNEKO

These are my personal dotfiles for my Linux setup. They configure various applications to create a consistent and personalized environment.

## Dependencies

This setup relies on a range of software to create a complete desktop experience.

| Category          | Software                                                                                                                                            |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Core**          | [Hyprland](https://hyprland.org/), [Polkit KDE Agent](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/)                                    |
| **User Interface**| [quickshell](https://github.com/carljustineoyales/quickshell), [Rofi](https://github.com/davatorium/rofi), [swaync](https://github.com/ErikReider/swaync), [hyprlock](https://wiki.hyprland.org/Ecosystem/hyprlock/), [wlogout](https://github.com/ArtsyMacaw/wlogout), [hyprpaper](https://wiki.hyprland.org/Ecosystem/hyprpaper/) |
| **Applications**  | [Kitty](https://sw.kovidgoyal.net/kitty/), [Thunar](https://docs.xfce.org/xfce/thunar/start), [btop](https://github.com/aristocratos/btop), [nwg-look](https://github.com/nwg-piotr/nwg-look)                  |
| **Utilities**     | [fastfetch](https://github.com/fastfetch-cli/fastfetch), [starship](https://starship.rs/), [grim](https://github.com/emersion/grim), [slurp](https://github.com/emersion/slurp), [swappy](https://github.com/jtheoof/swappy), [jq](https://stedolan.github.io/jq/), [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/), `playerctl`, `brightnessctl`, [NetworkManager Applet](https://wiki.gnome.org/Projects/NetworkManager), [fish](https://fishshell.com/),[pacman-contrib](https://archlinux.org/packages/extra/x86_64/pacman-contrib/), [Tumbler](https://docs.xfce.org/xfce/tumbler/start), [FFmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer), [Stow](https://www.gnu.org/software/stow/) |
| **Bluetooth**     | [bluez](https://archlinux.org/packages/extra/x86_64/bluez/), [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/), [blueman](https://archlinux.org/packages/extra/x86_64/blueman/)                                                                                             |
| **Fonts**         | [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads), [Noto-fonts-cjk](https://archlinux.org/packages/extra/any/noto-fonts-cjk/)                                                                                   |

## Installation

To install these dotfiles, follow these steps:

1.  First, ensure all necessary dependencies are installed on your system. For Arch Linux, you can install many of them with:
    ```bash
    yay -S hyprland polkit-kde-agent quickshell rofi swaync hyprlock wlogout hyprpaper kitty thunar btop fastfetch starship grim slurp swappy jq pavucontrol playerctl brightnessctl networkmanager-applet ttf-jetbrains-mono-nerd noto-fonts-cjk  bluez bluez-utils blueman fish pacman-contrib nwg-look tumbler ffmpegthumbnailer stow
    ```
    You may also need additional packages depending on your specific setup, or some package names might differ slightly.
2.  Run the `install-fonts.sh` script to install the custom fonts.
    ```bash
    ./install-fonts.sh
    ```
3.  Clone this repository:
    ```bash
    git clone https://github.com/carljustineoyales/arch-quickshell.git ~/dotfiles
    ```
4.  Navigate into the cloned directory:
    ```bash
    cd ~/dotfiles
    ```
5.  GNU stow:
    ```bash
    # Ensure the ~/.config directory exists
    mkdir -p ~/.config

    # GNU stow
    stow -t ~ .
    ```

**Note:** You may need to adjust the paths in the configuration files to match your system.

