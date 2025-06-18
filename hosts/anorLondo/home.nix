{ pkgs, config, ... }: {

  imports = [
    ./variables.nix

    # Programs
    ../../home/programs/kitty
    ../../home/programs/nvf
    ../../home/programs/shell
    ../../home/programs/fetch
    ../../home/programs/git
    ../../home/programs/git/signing.nix
    ../../home/programs/spicetify
    ../../home/programs/nextcloud
    ../../home/programs/thunar
    ../../home/programs/lazygit
    ../../home/programs/zen
    ../../home/programs/duckduckgo-colorscheme
    ../../home/programs/discord
    ../../home/programs/tailscale
    ../../home/programs/anyrun

    # Scripts
    ../../home/scripts # All scripts

    # System (Desktop environment like stuff)
    ../../home/system/hyprland
    ../../home/system/hypridle
    ../../home/system/hyprlock
    ../../home/system/hyprpanel
    ../../home/system/hyprpaper
    ../../home/system/wofi
    ../../home/system/zathura
    ../../home/system/mime
    ../../home/system/udiskie
    ../../home/system/clipman

    #./secrets # You should probably remove this line, this is where I store my secrets
  ];

  home = {
    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;

    packages = with pkgs; [
      # Apps
      vesktop # Discord client
      bitwarden # Password manager
      vlc # Video player
      obsidian # Note taking app
      todoist # Todolists
      textpieces # Manipulate texts
      curtail # Compress images
      gimp3-with-plugins
      gnome-clocks
      gnome-text-editor
      figma-linux

      #Gaming
      prismlauncher # Minecraft launcher
      shadps4 # PS4 emulator
      lutris # Pirated game launcher
      (wineWowPackages.stable.override { waylandSupport = true; })
      winetricks
      protonup # Proton my beloved

      # Dev
      go
      nodejs
      python3
      jq
      figlet
      just
      pnpm
      lazydocker
      vscode
      jetbrains-toolbox

      #Office
      rustdesk

      # Utils
      nh # Nix helper
      qbittorrent
      p7zip
      optipng
      pfetch
      pandoc
      btop-rocm
      fastfetch
      nitch
      ripgrep
      yazi
      fzf
      bluez
      solaar

      # Just cool
      peaclock
      cbonsai
      pipes
      cmatrix

    ];

    # Import my profile picture, used by the hyprpanel dashboard
    file.".face.icon" = { source = ./profile_picture.png; };

    # Don't touch this
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
