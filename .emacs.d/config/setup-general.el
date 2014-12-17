;;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))
  
;;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;;;utf-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;;;highlight parenthesis
(show-paren-mode 1)
(setq show-paren-delay 0)

;;;soft tab
(setq-default indent-tabs-mode nil)   ;;; don't use tabs to indent
(setq-default tab-width 4)            ;;; but maintain correct appearance

;;;editor style
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10" ))
(setq-default line-spacing 1)
(global-linum-mode t)


;;; maximize the window after launch
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))) 
 
;;;let speedbar use Exuberant Ctags
(setq speedbar-fetch-etags-command "ctags")
(setq speedbar-fetch-etags-arguments '("-e" "-f" "-"))