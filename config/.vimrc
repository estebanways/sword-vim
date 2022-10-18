" Adds line numbers
set number
" Enables mouse drag and drop and click to move cursor
set mouse=a
" Defines the width of line numbers
set numberwidth=1
" Allows the mouse to copy and paste selection
set clipboard=unnamed
" Colorizes text
syntax enable
" Shows the executing commands (keyboard keys)
set showcmd
" Shows the cursor position (y, x)
set ruler
" Underline the current line
set cursorline
" Defines encoding
set encoding=utf-8
" Highlights the matching parethesis
set showmatch
" Changes tabulation with TAB to 2 spaces
set sw=2
" Displays the distance from the current line to every other line
set relativenumber
" Searching
set hlsearch        " highlight matches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive ...
set smartcase       " ... unless they contain at least one capital letter
" Controls when/how to display the status-bar
set laststatus=2
" Removes the modes bar at the end of the editor
set noshowmode

" 'Set' options that are not basic

" Sources of the current file
"so ~/.vim/plugins.vim
"so ~/.vim/plugin-config.vim
"so ~/.vim/maps.vim

" Source files in ~/.vim (but this is done in ~/.config/nvim/init.vim)
"so ~/.vim/plugins.vim
"so ~/.vim/plugin-config.vim
"so ~/.vim/maps.vim
" But it is done in 

" Lua

" Multiline use from Neovim
"lua <<EOF
"print('hello from lua')
"print('line 2')
"EOF

" Single line use from Neovim
"lua print('this also works')

" Source a minmal Lua file from Neovim
"so ~/.vim/basic.lua

" Source an init lua file from Neovim
so ~/.vim/init.lua

" Looks for installed plugins in the plugins directory
call plug#begin('~/.vim/plugged')

" Autocomplete

" repeat.vim
" Press . is used to repeat the last command. Works with particular plugins.
" '... you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole.'
"Plug 'tpope/vim-repeat'

" UltiSnips is the ultimate solution for snippets in Vim
" Track the engine
Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Coc.nvim: Conquer of completion. True snippet and additional text editing support
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Coc Extensions list
" coc-json - json
" coc-tsserver - TypeScript
" coc-css - CSS
" coc-kite - Kite LS manager compatibility plugins
" ADD-HERE

" Copilot.vim
Plug 'github/copilot.vim'

" Typing

" Creates closing HTML like tags when typing
Plug 'alvan/vim-closetag'

" surround.vim
" It's all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'

" Color
Plug 'ap/vim-css-color'

" Git
Plug 'tpope/vim-fugitive'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" IDE (2)
" EditorConfig
"Plug 'editorconfig/editorconfig-vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'

" Indent line
" Displaying thin vertical lines at each indentation level for code indented with spaces.
Plug 'yggdroot/indentline'

" nerdcommenter
" Comment functions so powerful—no comment necessary.
Plug 'scrooloose/nerdcommenter'

" Status bar
Plug 'itchyny/lightline.vim'
" Lightline plugin ALE
Plug 'maximbaz/lightline-ale'

" vim-devicons
" Adds filetype glyphs (icons) to various vim plugins
Plug 'ryanoasis/vim-devicons'

" Syntax
Plug 'sheerun/vim-polyglot'

" Vim- polyglot: vim-javascript
Plug 'pangloss/vim-javascript'

" Vim- polyglot: python-syntax
Plug 'vim-python/python-syntax'

" Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mhartington/oceanic-next'

" The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
Plug 'wakatime/vim-wakatime'

" Tmux
Plug 'benmills/vimux'

" vimux-jest-test
Plug 'tyewang/vimux-jest-test'

" vim-test
Plug 'janko-m/vim-test'


call plug#end()

" Map leader
let mapleader=" "

" Custom shortcuts with leader key
" Write file
nmap <Leader>w :w<CR>
" Quit file
nmap <Leader>q :q<CR>
"let g:deoplete#enable_at_startup = 1
"let g:jsx_ext_required = 0
" Run current file with node.js
nnoremap <Leader>x :!node %<cr>

" Easymotion options
nmap <Leader>s <Plug>(easymotion-s2)

" Grubvox options
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = "hard" 

" Oceanic-next options
" If you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
colorscheme OceanicNext

" Nerdtree options
" NERDTree configuration
let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
"let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let g:NERDTreeQuitOnOpen=1
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
"" set shortcut for open Nerdtree
map <C-n> :NERDTreeToggle<CR>
"" Make Nerdtree show .files by default
let NERDTreeShowHidden=1

" UltiSnips options
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UtilSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Kite options
" Configuring supported languages
" Python, JavaScript, Go
"let g:kite_supported_languages = ['python', 'javascript', 'go']
" All the languages Kite supports
"let g:kite_supported_languages = ['*']
" Turn off Kite
let g:kite_supported_languages = []
" Allow particular coc extensions to work, to avoid turnning off Kite
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]

" Coc.nvim options
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" For scss files, you may need use:
autocmd FileType scss setl iskeyword+=@-@

" vim-fugitive options
" fugitive always vertical diffing
set diffopt+=vertical
" git status
nnoremap <leader>gs :Git<CR>

" fzf options
" Search input above
"let $FZF_DEFAULT_OPTS='--layout=reverse'

" Styled-components options
" Break syntax colorization in very long files. Use at own risk!
" Makes vim consider all lines in the file for syntax highlighting if it encounters a javascript/typescript file.
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" Resets this value if it leaves the buffer again. (This will also reset previously set syntax-syncing settings, that you or other plugins might have set.)
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Vim-polyglot options
" Disable individual language packs
" Please declare this variable before polyglot is loaded (at the top of .vimrc)
"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown']
" Disable filetype detection
" Disables Vim Polyglot filetype plugin won't disable native Vim filetype plugin
"let g:polyglot_disabled = ['markdown.plugin']
" Disables Autoindent
"let g:polyglot_disabled = ['autoindent']
" Reindent
"Disables reindenting of the current line in insert mode (see vim 'indentkeys'), by turning it off 
"autocmd BufEnter * set indentexpr=
" Disables Default settings (Check out the list in the documentation)
"let g:polyglot_disabled = ['sensible']
" Disables No ftdetect if you want to use vim-polyglot plugins, but not ftdetect autocommands
"let g:polyglot_disabled = ['ftdetect']

" Vim-polyglot: vim-javacript options
" Enables syntax highlighting for JSDocs
"let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well
"let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow. Default value: 0
"let g:javascript_plugin_flow = 1
" Enable code folding for javascript based on our syntax file. Please note this can have a dramatic effect on performance
"
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END
"
" Concealing Characters
" Enable concealing within VIM
"set conceallevel=1
" OR if you wish to toggle concealing you may wish to bind a command such as the following which will map <LEADER>l (leader is usually the \ key) to toggling conceal mode:
"map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" You can customize concealing characters, if your font provides the glyph you want, by defining one or more of the following variables:
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"

" Vim-polyglot: python-syntax options
" Enables all syntax highlighting features
let g:python_highlight_all = 1
" Enable/Disable syntax highlighting features individually
"g:python_version_2				                      " Python 2 mode. Default 0
"b:python_version_2				                      " Python 2 mode (buffer local). Default 0
"g:python_highlight_builtins			              " Highlight builtin objects, types, and functions. Default 0
"g:python_highlight_builtin_objs		            " Highlight builtin objects only. Default 0
"g:python_highlight_builtin_types		            " Highlight builtin types only. Default 0
"g:python_highlight_builtin_funcs		            " Highlight builtin functions only. Default 0
"g:python_highlight_builtin_funcs_kwarg		      " Highlight builtin functions when used as kwarg. Default 1
"g:python_highlight_exceptions			            " Highlight standard exceptions. Default 0
"g:python_highlight_string_formatting		        " Highlight % string formatting. Default 0
"g:python_highlight_string_format		            " Highlight syntax of str.format syntax.Default 0
"g:python_highlight_string_templates		        " Highlight syntax of string.Template. Default 0
"g:python_highlight_indent_errors		            " Highlight indentation errors. Default 0
"g:python_highlight_space_errors		            " Highlight trailing spaces. Default 0
"g:python_highlight_doctests			              " Highlight doc-tests. Default 0
"g:python_highlight_func_calls			            " Highlight functions calls. Default 0
"g:python_highlight_class_vars			            " Highlight class variables self, cls, and mcs. Default 0
"g:python_highlight_operators			              " Highlight all operators. Default 0
"g:python_highlight_all				                  " Enable all highlight options above, except for previously set. Default 0.
"g:python_highlight_file_headers_as_comments    " Highlight shebang and coding headers as comments. Default 0
"g:python_slow_sync				                      " Disable for slow machines. Default 1

" indentLine options
" If you want to highlight conceal color with your colorscheme, disable by:
let g:indentLine_setColors = 0
" Change Indent Char (Vim and GVim)
" where 'c' can be any ASCII character. You can also use one of ¦, ┆, │, ⎸, or ▏ to display more beautiful lines. However, these characters will only work with files whose encoding is UTF-8.
let g:indentLine_char = '|'
" Or, each indent level has a distinct character:
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" Change Conceal Behaviour
" See the VIM Reference Manual for more information on the conceal feature.
" indentLine will overwrite your "concealcursor" and "conceallevel" with default value
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
" If you want to keep your conceal setting
"let g:indentLine_setConceal = 0
" Disabling conceal for JSON and Markdown without disabling indentLine plugin
" Even though this plugin requires conceal to be enabled for it to work, it is possible to disable conceal for JSON and Markdown files and still get the indentLine plugin to show indent lines for those files.
" Builtin json.vim and markdown.vim syntax allow disabling conceal by setting the following vars:
"let g:vim_json_conceal=0
"let g:markdown_syntax_conceal=0

" nerdcommenter options
" leverage support for selections
" (keys leader + 'c' ...)
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

" lightline.vim options
" custom settings, include ALE plugin options as well
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \		'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
			\		'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
			\							 [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
			\ 'component': {
			\   'charvaluehex': '0x%B'
			\ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" Lightline plugin ALE options
" Register the components:
" Overrides the previous declation, resetting the custom bar configuration:
"let g:lightline = {}
" Components
let g:lightline.component_expand = {
			\  'linter_checking': 'lightline#ale#checking',
			\  'linter_infos': 'lightline#ale#infos',
			\  'linter_warnings': 'lightline#ale#warnings',
			\  'linter_errors': 'lightline#ale#errors',
			\  'linter_ok': 'lightline#ale#ok',
			\ }
" Set color to the components:
let g:lightline.component_type = {
			\     'linter_checking': 'right',
			\     'linter_infos': 'right',
			\     'linter_warnings': 'warning',
			\     'linter_errors': 'error',
			\     'linter_ok': 'right',
			\ }

" vim-test options
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" Vimux options
" Orientation (vertical or horizontal)
let g:VimuxOrientation = "v"
" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Prompt for a command to run, i.e.: node index.js
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>
" Clear the terminal screen of the runner pane.
map <Leader>v<C-l> :VimuxClearTerminalScreen<CR>

" closetag.vim options
" Filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" Filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" Filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'
" Filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" Integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
" Dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
" React fragments
" integer value [0|1]
" Enables closing tags for React fragments -> <></> for all supported file types
"let g:closetag_enable_react_fragment = 1
" Disable closing tags for React fragments -> <></> for all supported file types
"let g:closetag_enable_react_fragment = 0


