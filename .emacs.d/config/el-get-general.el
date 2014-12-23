;;; theme
(add-to-list 'my:el-get-packages 'smyx-theme)

;;;evil
(add-to-list 'my:el-get-packages 'evil)
(add-to-list 'my:el-get-packages 'evil-leader)
(add-to-list 'my:el-get-packages 'ace-jump-mode)
(add-to-list 'my:el-get-packages 'evil-nerd-commenter)
(add-to-list 'my:el-get-packages 'evil-matchit)
(add-to-list 'my:el-get-packages 'evil-surround)

;;;add redo support
(add-to-list 'my:el-get-packages 'undo-tree)

;;;common minor modes
(add-to-list 'my:el-get-packages 'helm)
(add-to-list 'my:el-get-packages 'linum-relative)
(add-to-list 'my:el-get-packages 'powerline)
(add-to-list 'my:el-get-packages 'powerline-evil)
(add-to-list 'my:el-get-packages 'indent-guide)
(add-to-list 'my:el-get-packages 'discover-my-major)
(add-to-list 'my:el-get-packages 'golden-ratio)
(add-to-list 'my:el-get-packages 'buffer-move)

;;;tags/project view
(add-to-list 'my:el-get-packages 'sr-speedbar)

;;;auto completion
(add-to-list 'my:el-get-packages 'auto-complete)

;;;syntax checking
(add-to-list 'my:el-get-packages 'flycheck)

;;;spell check
;;;Emacs 24+ has fly-spell built in
;;;(add-to-list 'my:el-get-packages 'flyspell-lazy)

;;;git mode
(add-to-list 'my:el-get-packages 'magit)

;;;clean up status bar
(add-to-list 'my:el-get-packages 'diminish)