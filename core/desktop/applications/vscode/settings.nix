{ config, lib, ... }:

{
  options.vscode = {
    zoomLevel = lib.mkOption {
      type = lib.types.int;
      default = 0;
      description = "VS Code window zoom level";
    };
  };

  config.home-manager.users.luke.programs.vscode.profiles.default.userSettings = {
    "editor.colorDecorators" = false;
    "explorer.confirmDelete" = false;
    "editor.acceptSuggestionOnCommitCharacter" = false;
    "editor.defaultFormatter" = "esbenp.prettier-vscode";
    "editor.formatOnSave" = true;
    "editor.tabSize" = 2;
    "explorer.confirmDragAndDrop" = false;
    "files.insertFinalNewline" = true;
    "files.trimFinalNewlines" = true;
    "files.trimTrailingWhitespace" = true;
    "security.workspace.trust.untrustedFiles" = "open";
    "svelte.enable-ts-plugin" = true;
    "telemetry.telemetryLevel" = "off";
    "update.mode" = "none";
    "vim.useSystemClipboard" = true;
    "workbench.colorTheme" = "Andromeda Colorizer";
    "window.customMenuBarAltFocus" = false;
    "window.titleBarStyle" = "custom";
    "window.zoomLevel" = config.vscode.zoomLevel;
    "workbench.editor.empty.hint" = "hidden";
    "workbench.startupEditor" = "none";
    "[latex]" = {
      "editor.rulers" = [ 80 ];
    };
  };
}
