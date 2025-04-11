# Lorem Ipsum for Neovim

A simple plugin to generate "lorem ipsum" text directly in Neovim using nvim-cmp for autocompletion.

https://github.com/user-attachments/assets/1be0482c-e86d-46a8-a01b-c90eebba9ca4

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
    "dnnr1/lorem-ipsum.nvim",
    config = function()
        require("lorem_ipsum")
    end,
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "dnnr1/lorem-ipsum.nvim",
    requires = { "hrsh7th/nvim-cmp" },
    config = function()
        require("lorem_ipsum")
    end
}
```

## Configuration

To use this plugin, you **must** add the `lorem_ipsum` source to your nvim-cmp sources list. Add `{ name = "lorem_ipsum" }` to your nvim-cmp setup:

```lua
require("cmp").setup({
    -- Other configurations...
    sources = require("cmp").config.sources({
        -- Your other sources...
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
        { name = "lorem_ipsum" }, 👈 Add this line 
    }),
    -- Rest of the configuration...
})
```

## How to Use

1. In insert mode, type `lorem`
2. Press your configured completion key (like `<C-Space>`) to show suggestions.
3. Select one of the available options:
   - `lorem ipsum (10 words)`: Generates lorem ipsum text with 10 words
   - `lorem ipsum (50 words)`: Generates lorem ipsum text with 50 words
   - `lorem ipsum (100 words)`: Generates lorem ipsum text with 100 words

## Troubleshooting

If the plugin is not working:

1. Check if `lorem_ipsum` is in your nvim-cmp sources list
2. Make sure the plugin configuration is being loaded correctly
3. Restart Neovim after making configuration changes
