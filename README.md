# Lorem Ipsum for Neovim

A simple source that adds "lorem ipsum" autocompletion to Neovim via [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp).

https://github.com/user-attachments/assets/1be0482c-e86d-46a8-a01b-c90eebba9ca4

---

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

Add `lorem-ipsum.nvim` as a dependency of `nvim-cmp`:

```lua
return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "dnnr1/lorem-ipsum.nvim", -- 👈 Add this line
  },
  -- Your config continues...
}
```

Then, register the source in your cmp setup:

```lua
require("cmp").setup({
  -- Other configurations...
  sources = require("cmp").config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
    { name = "lorem_ipsum" }, -- 👈 Add this line
  }),
})
```

## ✨ Usage

1. Enter insert mode and type `lorem`
2. Trigger completion using your configured key (e.g. `<C-Space>`)
3. Pick one of the available snippets:
   - `lorem ipsum (10 words)`
   - `lorem ipsum (50 words)`
   - `lorem ipsum (100 words)`

The selected option will insert a block of lorem ipsum text into your buffer.

---

## 🛠 Troubleshooting

If it's not working:

- ✅ Make sure `lorem-ipsum.nvim` is correctly added as a dependency of `nvim-cmp`
- ✅ Ensure `{ name = "lorem_ipsum" }` is listed in your cmp sources
- 🔄 Restart Neovim after making configuration changes

## License 📄

[MIT](LICENSE)
