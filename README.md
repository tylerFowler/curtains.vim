# curtains.vim
Pull the shades on your vim theme by toggling between light and dark schemes.

# Scheme Setup
First, define your color scheme preferences in your `.vimrc`:

```vim
let g:curtains_darkscheme = "gruvbox"
let g:curtains_lightscheme = "papercolor"
```

Now when vim starts up it will automatically use `papercolor` as the colorscheme and will set the background to `light`. Alternatively if you would like vim to start in the dark scheme by default add this to your `.vimrc`:

```vim
let g:curtains_defaultscheme = "dark"
```

By default the light scheme will use the `morning` colorscheme and the dark scheme will use `default`.

# Usage
After adding the settings you can now run the `LightScheme` and `DarkScheme` commands to switch between themes.

# Installation
To install via [pathogen.vim](https://github.com/tpope/vim-pathogen):

```shell
git clone https://github.com/tylerFowler/curtains.vim.git ~/.vim/bundle/curtains.vim
```

# License

See [LICENSE](./LICENSE)

