local status, autopairs = pcall(require, "nvim-autopairs")
if (not status)
  then
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})
