{ pkgs, ... }:

{
  home-manager.users.luke.programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      # ashpowell.monokai-one-dark-vivid
      bbenoist.nix
      # ms-vscode.remote-explorer
      # ms-vscode-remote.remote-ssh
      # ms-vscode-remote.remote-ssh-edit
      vscodevim.vim
    ];
    keybindings = [
      {
        "key" = "ctrl+[";
        "command" = "-extension.vim_ctrl+[";
        "when" = "editorTextFocus && vim.active && vim.use<C-[> && !inDebugRepl";
      }
      {
        "key" = "ctrl+]";
        "command" = "-extension.vim_ctrl+]";
        "when" = "editorTextFocus && vim.active && vim.use<C-]> && !inDebugRepl";
      }
      {
        "key" = "ctrl+a";
        "command" = "-extension.vim_ctrl+a";
        "when" = "editorTextFocus && vim.active && vim.use<C-a> && !inDebugRepl";
      }
      {
        "key" = "ctrl+b";
        "command" = "-extension.vim_ctrl+b";
        "when" = "editorTextFocus && vim.active && vim.use<C-b> && !inDebugRepl && vim.mode != 'Insert'";
      }
      {
        "key" = "ctrl+c";
        "command" = "-extension.vim_ctrl+c";
        "when" = "editorTextFocus && vim.active && vim.overrideCtrlC && vim.use<C-c> && !inDebugRepl";
      }
      {
        "key" = "ctrl+d";
        "command" = "-extension.vim_ctrl+d";
        "when" = "editorTextFocus && vim.active && vim.use<C-d> && !inDebugRepl";
      }
      {
        "key" = "ctrl+f";
        "command" = "-extension.vim_ctrl+f";
        "when" = "editorTextFocus && vim.active && vim.use<C-f> && !inDebugRepl && vim.mode != 'Insert'";
      }
      {
        "key" = "ctrl+g";
        "command" = "-extension.vim_ctrl+g";
        "when" = "editorTextFocus && vim.active && vim.use<C-g> && !inDebugRepl";
      }
      {
        "key" = "ctrl+h";
        "command" = "-extension.vim_ctrl+h";
        "when" = "editorTextFocus && vim.active && vim.use<C-h> && !inDebugRepl";
      }
      {
        "key" = "ctrl+j";
        "command" = "-extension.vim_ctrl+j";
        "when" = "editorTextFocus && vim.active && vim.use<C-j> && !inDebugRepl";
      }
      {
        "key" = "ctrl+k";
        "command" = "-extension.vim_ctrl+k";
        "when" = "editorTextFocus && vim.active && vim.use<C-k> && !inDebugRepl";
      }
      {
        "key" = "ctrl+n";
        "command" = "-extension.vim_ctrl+n";
        "when" = "editorTextFocus && vim.active && vim.use<C-n> && !inDebugRepl || vim.active && vim.use<C-n> && !inDebugRepl && vim.mode == 'CommandlineInProgress' || vim.active && vim.use<C-n> && !inDebugRepl && vim.mode == 'SearchInProgressMode'";
      }
      {
        "key" = "ctrl+o";
        "command" = "-extension.vim_ctrl+o";
        "when" = "editorTextFocus && vim.active && vim.use<C-o> && !inDebugRepl";
      }
      {
        "key" = "ctrl+p";
        "command" = "-extension.vim_ctrl+p";
        "when" = "editorTextFocus && vim.active && vim.use<C-p> && !inDebugRepl || vim.active && vim.use<C-p> && !inDebugRepl && vim.mode == 'CommandlineInProgress' || vim.active && vim.use<C-p> && !inDebugRepl && vim.mode == 'SearchInProgressMode'";
      }
      {
        "key" = "ctrl+s";
        "command" = "-extension.vim_ctrl+s";
        "when" = "editorTextFocus && vim.active && vim.use<C-s> && !inDebugRepl";
      }
      {
        "key" = "ctrl+t";
        "command" = "-extension.vim_ctrl+t";
        "when" = "editorTextFocus && vim.active && vim.use<C-t> && !inDebugRepl";
      }
      {
        "key" = "ctrl+v";
        "command" = "-extension.vim_ctrl+v";
        "when" = "editorTextFocus && vim.active && vim.use<C-v> && !inDebugRepl";
      }
      {
        "key" = "ctrl+w";
        "command" = "-extension.vim_ctrl+w";
        "when" = "editorTextFocus && vim.active && vim.use<C-w> && !inDebugRepl";
      }
      {
        "key" = "ctrl+x";
        "command" = "-extension.vim_ctrl+x";
        "when" = "editorTextFocus && vim.active && vim.use<C-x> && !inDebugRepl";
      }
      {
        "key" = "ctrl+y";
        "command" = "-extension.vim_ctrl+y";
        "when" = "editorTextFocus && vim.active && vim.use<C-y> && !inDebugRepl";
      }
      {
        "key" = "ctrl+z";
        "command" = "-extension.vim_ctrl+z";
        "when" = "editorTextFocus && vim.active && vim.use<C-z> && !inDebugRepl";
      }
      {
        "key" = "ctrl+j";
        "command" = "extension.vim_escape";
        "when" = "editorTextFocus && vim.active && !inDebugRepl";
      }
      {
        "key" = "escape";
        "command" = "-extension.vim_escape";
        "when" = "editorTextFocus && vim.active && !inDebugRepl";
      }
      {
        "key" = "ctrl+alt+j";
        "command" = "workbench.action.togglePanel";
      }
      {
        "key" = "ctrl+j";
        "command" = "-workbench.action.togglePanel";
      }
      {
        "key" = "shift+alt+j";
        "command" = "workbench.action.toggleMaximizedPanel";
      }
      {
        "key" = "ctrl+k ctrl+alt+s";
        "command" = "git.stageSelectedRanges";
      }
      {
        "key" = "ctrl+k ctrl+alt+s";
        "command" = "-git.stageSelectedRanges";
        "when" = "isInDiffEditor && !operationInProgress";
      }
      {
        "key" = "ctrl+k ctrl+n";
        "command" = "git.unstageSelectedRanges";
      }
      {
        "key" = "ctrl+k ctrl+n";
        "command" = "-git.unstageSelectedRanges";
        "when" = "isInDiffEditor && !operationInProgress";
      }
      {
        "key" = "ctrl+k ctrl+r";
        "command" = "git.revertSelectedRanges";
      }
      {
        "key" = "ctrl+k ctrl+r";
        "command" = "-git.revertSelectedRanges";
        "when" = "isInDiffEditor && !operationInProgress";
      }
    ];
    userSettings = {
      "editor.fontFamily" = "fantasque sans mono";
      "editor.fontLigatures" = true;
      "editor.fontSize" = 16;
      "editor.fontWeight" = 600;
      "editor.tabSize" = 2;
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;
      "security.workspace.trust.untrustedFiles" = "open";
      "terminal.integrated.fontSize" = 15;
      "terminal.integrated.fontWeight" = "bold";
      "vim.useSystemClipboard" = true;
      "workbench.colorTheme" = "Monokai One Dark Vivid";
      "window.titleBarStyle" = "custom";
    };
  };
}
