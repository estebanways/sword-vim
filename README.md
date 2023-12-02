<div align="center">

# Sword Vim 🗡️

A lightweight Vim/Neovim text editor and IDE designed for simplicity and efficiency.

[![GitHub license](https://img.shields.io/github/license/estebanways/sword-vim.svg)](https://github.com/estebanways/sword-vim/blob/master/LICENSE) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/estebanways/sword-vim/graphs/commit-activity) [![Downloads](https://img.shields.io/github/downloads/estebanways/sword-vim/total.svg?maxAge=2592001)](https://github.com/estebanways/sword-vim/releases/)

<img alt="sword-vim" src="./images/stash.jpg?raw=true" width="500" height="320" />

</div>

## Screenshots

[Key Mappings](./screenshots/mappings.png?raw=true) 📷 [Lists Finder](./screenshots/finder.png?raw=true) 📷 
[Basic Debugging](./screenshots/debugging.png?raw=true) 📷 [Diagnostics Indicators](./screenshots/indicators.png?raw=true) 📷 
[Code Analysis](./screenshots/analysis.png?raw=true) 📷 [Auto-completion and Suggestions](./screenshots/auto-completion.png?raw=true) 📷 
[Focus Coding](./screenshots/focus.png?raw=true) 📷 [Split Windows](./screenshots/split-windows.png?raw=true) 📷 
[REST Client](./screenshots/rest.png?raw=true) 📷 [Themes](./screenshots/themes.png?raw=true)

## Prerequisites

**Note:** The following list includes tools that may enhance the user experience but are not strictly prerequisites. Depending on your specific use case and preferences, you may choose to install some or all of these tools for improved functionality and convenience.

### Neovim build from source

| GNU/Linux                 | MacOS                         | Description                                                                  |
| --- | --- | --- |
| autoconf                  | autoconf                      | Configuration script system for software.                                    |
| automake                  | automake                      | Tool for automatically generating Makefile.in files.                         |
| cmake                     | cmake                         | Cross-platform makefile generator.                                           |
| curl                      | curl                          | A command-line tool and library for transferring data with URLs.             |
| g++                       | g++                           | GNU Compiler Collection - C++ compiler.                                      |
| gettext                   | gettext                       | Tools for internationalization (i18n) and localization (l10n).               |
| libtool                   | libtool                       | Generic library support script.                                              |
| *libtool-bin*             | *libtool*                     | (See libtool).                                                               |
| *ninja-build*             | *ninja*                       | Ninja build system.                                                          |
| pkg-config                | pkg-config                    | System for managing library compile and link flags.                          |
| s-tui                     | s-tui                         | Terminal UI for monitoring your computer's CPU temperature and more.         |
| unzip                     | unzip                         | Extraction utility for archives compressed in .zip format.                   |
| doxygen                   | doxygen                       | Documentation system for C++, C, Java, Objective-C, and more.                |

### Sword Vim

| GNU/Linux                 | MacOS                         | Description                                                                  |
| --- | --- | --- |
| bash-language-server      | bash-language-server          | Language Server Protocol for Bash.                                           |
| figlet                    | figlet                        | Program for making large letters out of ordinary text.                       |
| node.js LTS               | node.js LTS                   | JavaScript runtime built on Chrome's V8 JavaScript engine.                   |
| npm                       | npm                           | Package manager for JavaScript.                                              |
| Oh my Tmux!               | Oh my Tmux!                   | Tmux configuration framework.                                                |
| pip                       | pip                           | Package installer for Python.                                                |
| pip3                      | pip3                          | Package installer for Python 3.                                              |
| pynvim                    | pynvim                        | Python client for Neovim.                                                    |
| wl-clipboard              | wl-clipboard                  | Wayland clipboard utilities.                                                 |
| xclip                     | xclip                         | Command line interface to X selections (clipboard).                          |
| yarn                      | yarn                          | Alternative to NPM.                                                          |

### Languages

| GNU/Linux                 | MacOS                         | Description                                                                  |
| --- | --- | --- |
| bats                      | bats                          | Bash Automated Testing System.                                               |
| flake8                    | flake8                        | Tool for style guide enforcement in Python.                                  |
| NVM                       | NVM                           | Node Version Manager for managing multiple Node.js versions.                 |
| shellcheck                | shellcheck                    | Shell script analysis tool.                                                  |
| WezTerm                   |  iTerm2 / WezTerm             | Terminals with Ligatures and transparency support                            |

### External tools

| GNU/Linux                 | MacOS                         | Description                                                                  |
| --- | --- | --- |
| bat                       | bat                           | A cat clone with syntax highlighting and Git integration.                    |
| feh                       | feh                           | Fast and lightweight image viewer.                                           |
| fzf                       | fzf                           | Fuzzy finder for the command-line.                                           |
| jq                        | jq                            | Parsers and manipulates JSON data.                                           |
| Oh my Zsh!                | Oh my Zsh!                    | Zsh configuration framework.                                                 |
| qiv                       | qiv                           | Quick Image Viewer.                                                          |
| ripgrep                   | ripgrep                       | Line-oriented search tool that recursively searches your current directory.  |
| ristretto                 | ristretto                     | Lightweight and fast image viewer for the Xfce desktop environment.          |
| sxiv                      | sxiv                          | Simple X Image Viewer.                                                       |
| tidy                      | tidy                          | HTML and XML syntax checker and validator.                                   |
| zplug                     | zplug                         | Zsh plugin manager.                                                          |

## Installation

1. **Requirements:**
   - Neovim: Ensure Neovim is installed on your system. You can typically install it using your system's package manager (e.g., `apt`, `brew`, `yum`). You can also build it from source for your specific OS.
   - Git: The installation process often involves cloning repositories, so having Git installed is essential.

2. **Plugin Manager (Optional but recommended):**
   - Choose a plugin manager. Popular ones include `vim-plug`, `Dein.vim`, and `packer.nvim`.
   - Follow the installation instructions for your chosen plugin manager. The default configuration of Sword Vim requires `vim-plug` and `packer.nvim`.

3. **Configuration:**
   - Create a Neovim configuration file. The default location is `~/.config/nvim/init.vim` or `~/.vimrc` for Vim compatibility.
     Add the next lines to the file `init.vim`:
     ```vim
     " ------------------------------------------------------------------------------
     " Sets the runtimepath for Vim plugins and runtime files
     " ------------------------------------------------------------------------------
     " Adds ~/.vim to the start of runtimepath
     " Appends ~/.vim/after to runtimepath
     " Sets the packpath to match the runtimepath
     " Sources the user's Vim configuration file
     " ------------------------------------------------------------------------------
     set runtimepath^=~/.vim runtimepath+=~/.vim/after
     let &packpath=&runtimepath
     source ~/.vimrc
     ```
     - Create a symbolic link from the file `~/.vimrc` to the same file in `~/config/.vimrc`, where *config* is copy of the directory `sword-vim/config`.
       ```shell
       ln -s ~/config/.vimrc ~/.vimrc
       ```
     - Create a symbolic link from the directory `~/.vim` to the same directory in `~/config`, `~/config/.vim`.
       ```shell
       ln -s ~/config/.vim/ ~/.vim/
       ```
   - Add your chosen plugin manager setup to the configuration file. Sword Vim defaults `vim-plug` and `packer.nvim`, are already set up.
   - Install the Sword Vim plugins. For Packer, say no (N) to avoid Packer removing itself.
     ```vim
     :PlugInstall
     :PackerInstall
     ```
   - Configure basic settings like line numbers, syntax highlighting, etc.
   - Source or restart Neovim.
   - Voila! Enjoy it!

4. **Adding Plugins:**
   - Use your plugin manager to add plugins to Neovim. Plugins are typically specified in the configuration file. Sword Vim has two default configuration files, one for Vim Script, one for Lua.
   - Example with `vim-plug`:
     ```vim
     call plug#begin('~/.vim/plugged')
     " Add your plugins here
     Plug 'user/plugin-name'
     call plug#end()
     ```

5. **Customization:**
   - Customize key mappings, colorschemes, and other preferences based on your needs.
   - Keep in mind that some plugins may require additional configuration.

6. **Adapt to System Configuration:**
   - Be aware that specific configurations might be needed based on your operating system.
   - Some plugins might have dependencies that need to be installed separately.

7. **Updates:**
   - Regularly update your plugins using your plugin manager.
   - Stay informed about changes in Neovim or your plugins that might affect your configuration.

## Plugins Included

### VimL Plugins

| Category                     | VimL Plugin                                                                 | Description                                                 |
| --- | --- | --- |
| Auto-complete Plugins        | [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                     | Allows repeating the last command.                          |
|                              | [github/copilot.vim](https://github.com/github/copilot.vim)                 | GitHub's Copilot.                                           |
|                              | [Exafunction/codeium.vim](https://github.com/Exafunction/codeium.vim)       | Codeium.vim.                                                |
| Snippets Plugins             | [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)                   | Conquer of completion with additional text editing support. |
|                              | [sirver/ultisnips](https://github.com/sirver/ultisnips)                     | Ultimate solution for snippets in Vim.                      |
|                              | [honza/vim-snippets](https://github.com/honza/vim-snippets)                 | Snippets for various languages.                             |
| Comments Plugins             | [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)     | Powerful commenting functions.                              |
|                              | [tpope/vim-commentary](https://github.com/tpope/vim-commentary)             | Commenting utility.                                         |
| Typing Plugins               | [alvan/vim-closetag](https://github.com/alvan/vim-closetag)                 | Creates closing HTML tags when typing.                      |
|                              | [tpope/vim-surround](https://github.com/tpope/vim-surround)                 | Manipulates surroundings like parentheses and quotes.       |
| Finder Plugins               | [junegunn/fzf](https://github.com/junegunn/fzf)                             | Fuzzy finder for the terminal.                              |
| Formatting Plugins           | [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)         | Enhances actions like creating multiple cursors.            |
|                              | [prettier/vim-prettier](https://github.com/prettier/vim-prettier)           | Integrates Prettier for supported files.                    |
| Color Plugins                | [ap/vim-css-color](https://github.com/ap/vim-css-color)                     | Provides color highlighting for CSS.                        |
| Git Plugins                  | [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                 | Git wrapper for Vim.                                        |
|                              | [itchyny/vim-gitbranch](https://github.com/itchyny/vim-gitbranch)           | Provides the name of the git branch.                        |
| IDE Plugins                  | [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                 | Creates a start screen with bookmarks.                      |
|                              | [easymotion/vim-easymotion]( https://github.com/easymotion/vim-easymotion)  | Enhances motion in Vim.                                     |
|                              | [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)               | File system explorer.                                       |
|                              | [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Integrates navigation between Vim and Tmux.         |
|                              | [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)           | Status bar for Vim.                                         |
| DevIcons and Themes          | [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)         | Adds filetype glyphs.                                       |
|                              | [morhetz/gruvbox](https://github.com/morhetz/gruvbox)                       | Gruvbox theme.                                              |
|                              | [shinchu/lightline-gruvbox.vim](https://github.com/shinchu/lightline-gruvbox.vim) | Lightline theme for Gruvbox.                          |
|                              | [mhartington/oceanic-next](https://github.com/mhartington/oceanic-next)     | OceanicNext theme.                                          |
|                              | [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)             | Dracula theme.                                              |
| Other Productivity Plugins   | [tribela/vim-transparent](https://github.com/tribela/vim-transparent)       | Adds transparency to Vim.                                   |
|                              | [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime)           | Tracks coding activity.                                     |
|                              | [benmills/vimux](https://github.com/benmills/vimux)                         | Tmux integration.                                           |
|                              | [itspriddle/vim-shellcheck](https://github.com/itspriddle/vim-shellcheck)   | Finds errors in bash/sh scripts.                            |
|                              | [tyewang/vimux-jest-test](https://github.com/tyewang/vimux-jest-test)       | Jest test integration.                                      |
|                              | [janko-m/vim-test](https://github.com/janko-m/vim-test)                     | Test runner for Vim.                                        |
|                              | [diepm/vim-rest-console](https://github.com/diepm/vim-rest-console)         | REST console for sending requests and displaying responses. |
| Syntax Plugins               | [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)             | Language pack for various languages.                        |
|                              | [styled-components/vim-styled-components](https://github.com/styled-components/vim-styled-components) | Styled Components syntax highlighting. |
|                              | [kovetskiy/vim-bash](https://github.com/kovetskiy/vim-bash)                 | Fixes syntax issues with bash files.                        |
|                              | [rosstimson/bats.vim](https://github.com/rosstimson/bats.vim)               | Extends shell highlighting for Bats.                        |

### Lua Plugins

| Category                     | Lua Plugin                                                                  | Description                                                 |
| --- | --- | --- |
| Buffer Line Plugin           | [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)       | Snazzy buffer line with tabpage integration.                |
| Dashboard Plugin             | [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)                 | Lua powered greeter like vim-startify/dashboard-nvim.       |
| Fuzzy Finder Plugin          | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Highly extendable fuzzy finder over lists.            |
| Keybinding Popup Plugin      | [folke/which-key.nvim](https://github.com/folke/which-key.nvim)             | Displays a popup with possible keybindings.                 |
| Lazy Plugin Manager          | [folke/lazy.nvim](https://github.com/folke/lazy.nvim)                     | Modern plugin manager for Neovim (commented out in the code). |
| Snippets Plugins             | [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippets collection for various programming languages.  |
| Abstract-cs Theme            | [Abstract-IDE/Abstract-cs](https://github.com/Abstract-IDE/Abstract-cs)     | Colorscheme for Neovim with Tree-sitter support.            |
| Alignment                    | [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)       | Easy-to-use Vim alignment.                                  |

## Insights

![insights](./screenshots/insights.png)
<br />Image taken from GitHub

## Contribute

1. Fork it (https://github.com/estebanways/sword-vim/fork)
2. Create your feature branch (<kbd>git checkout -b my-new-feature</kbd>)
3. Commit your changes (<kbd>git commit -am 'Add some feature'</kbd>)
4. Push to the branch (<kbd>git push origin my-new-feature</kbd>)
5. Create a new Pull Request

## License

Sword Vim is [MIT Licensed](./LICENSE).

[estebanways]: https://github.com/estebanways
