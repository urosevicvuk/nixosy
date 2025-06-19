{
  programs.nvf.settings.vim = {
    utility = {
      motion.flash-nvim.enable = true;
      outline.aerial-nvim.enable = true;
    };
    tabline.nvimBufferline.enable = true;
    notes.todo-comments.enable = true;
    assistant.copilot = {
      enable = true;
      cmp.enable = true;
    };
    statusline.lualine.enable = true;
    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      setupOpts = {
        keymap.preset = "enter";
        cmdline.keymap.preset = "none";
      };
    };
    snippets.luasnip.enable = true;
    ui = {
      noice.enable = true;
      colorizer.enable = true;
    };
    git = {
      enable = true;
      gitsigns.enable = true;
    };
    terminal.toggleterm = {
      enable = true;
      lazygit = {
        enable = true;
        mappings.open = "<leader>gl";
      };
    };
    formatter.conform-nvim.enable = true;
  };
}
