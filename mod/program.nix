{pkgs, catppuccin, ...}:
{

 programs = {
   home-manager.enable = true;
   obs-studio.enable = true;
   kitty = {
     enable = true;
     theme = "Catppuccin-Mocha";
     settings = {
       linux_display_server = "x11";
       tab_bar_min_tabs = 1;
       tab_bar_edge = "bottom";
       tab_bar_style = "powerline";
       tab_powerline_style = "slanted";
       initial_window_width = "85c";
       initial_window_height = "25c";
       remember_window_size = false;};
  };
  bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      gvim = "sudo nix run github:getchoo/getchvim";
      homes = "home-manager switch";
      nixs = "sudo nixos-rebuild switch";
      homeb = "home-manager build";
      nixb = "sudo nixos-rebuild switch";
			nixu = "sudo nixos-rebuild upgrade";};
  };
  git = {
     enable = true;
     userName = "gas-station-sushi";
     userEmail = "sushicat777@proton.me";
  };
  vscode = {
   enable = true;
   extensions = (with pkgs.vscode-extensions; [
    rust-lang.rust-analyzer
    jnoortheen.nix-ide
    usernamehw.errorlens
    ])
    ++ (with pkgs.vscode-extensions.catppuccin; [
      catppuccin-vsc
      catppuccin-vsc-icons
      ]);
    userSettings = {
     "nix.enableLanguageServer" = true;
     "nix.serverPath" = "nil";
     "workbench.colorTheme" = "Catppuccin Mocha";
     "workbench.iconTheme" = "catppuccin-mocha";
     "catppuccin.accentColor" = "maroon";
     "catppuccin.customUIColors" = {
      "mocha" = {
        "statusBar.foreground" = "accent";};
        };
     "editor.semanticHighlighting.enabled" = true;
     "terminal.integrated.minimumContrastRatio" = 1;
     "window.titleBarStyle" = "custom";
     "editor.tabSize" = 2;
     "editor.fontSize" = 12;
         };
    };

 };
}
