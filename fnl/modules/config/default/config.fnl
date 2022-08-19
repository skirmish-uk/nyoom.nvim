(import-macros {: nyoom-module-p! : set! : augroup! : autocmd!} :macros)

;; Restore cursor on exit
(augroup! restore-cursor-on-exit
          (autocmd! VimLeave * '(set! guicursor ["a:ver100-blinkon0"])))

;; improve updatetime for quicker refresh + gitsigns
(set! updatetime 250)
(set! timeoutlen 400)

;; Set shortmess
(set! shortmess+ :cI)

;; Show whitespace characters
(nyoom-module-p! ui.nyoom
  (do
    (set! list)
    (set! listchars {:trail "·"
                     :tab "→ "
                     :nbsp "·"})))

;; Sign column
(set! signcolumn "yes:1")

;; Substitution
(set! gdefault)

;; By default no wrapping
(set! nowrap)

;; smart wrapping
(nyoom-module-p! editor.wrap
  (do
    (set! wrap)
    (set! linebreak)
    (set! breakindent)
    (set! breakindentopt ["shift:2"])
    (set! showbreak "↳ ")))

;; Use clipboard outside Neovim
(set! clipboard :unnamedplus)

;; Enable mouse input
(set! mouse :a)

;; Disable swapfiles and enable undofiles
(set! undofile)
(set! noswapfile)

;; Lazy redraw
(set! lazyredraw)

;; Smart search
(set! smartcase)

;; Indentation rules
(set! copyindent)
(set! smartindent)
(set! preserveindent)

;; Indentation level
(set! tabstop 4)
(set! shiftwidth 4)
(set! softtabstop 4)

;; Expand tabs
(set! expandtab)

;; Automatic split locations
(set! splitright)
(set! splitbelow)

;; Scroll off
(nyoom-module-p! ui.nyoom
  (set! scrolloff 4))

;; Grep
(set! grepprg "rg --vimgrep")
(set! grepformat "%f:%l:%c:%m")

;; colorscheme
(nyoom-module-p! ui.nyoom
  (set! background :dark))
