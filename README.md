Just uses simple regex, is based on your nvim colours, if you haven't changed them I recommend adding:

```v
vim.api.nvim_set_hl(0, "Constant", { fg = "#ffcc00" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#569CD6" })
```
to your init.lua in ~/.config/nvim/init.lua

to use this just place this fifle in ~/.config/nvim/syntax/skript.vim
then add 
```v
vim.filetype.add({
  extension = { sk = "skript" },
})
```
to your init.lua


<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/db0752e3-77ac-4b85-ae14-a3ae6fd83abd" />
