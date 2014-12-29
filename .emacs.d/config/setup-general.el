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

;;I'm using zh-tw windows, set this to display Chinese output in shell correctly
;;no effect, unknown reason
;;;(require 'shell)
;;;(add-hook 'shell-mode-hook '(set-language-environment 'Chinese-BIG5))
;;;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

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

;;;let flyspell uses aspell
(require 'ispell)
(setq ispell-dictionary "english")
(setq ispell-program-name "aspell.exe")

;;;manually point to dict/data dir, because I cannot compile aspell with desired data/dict folder under Windows
(princ (concat "--data-dir=" (getenv "HOME") "Aspell\\data") )
(add-to-list 'ispell-extra-args (concat "--data-dir=" (getenv "HOME") "Aspell\\data") )
(add-to-list 'ispell-extra-args (concat "--dict-dir=" (getenv "HOME") "Aspell\\dict") )

;;;flyspell-buffer will find mispelled word without any command
(add-hook 'flyspell-mode-hook 'flyspell-buffer)

;;;not used options, but comment it here anyway: https://gist.github.com/cbilson/5910672
;;;(add-to-list 'ispell-local-dictionary-alist '("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-B") nil iso-8859-1))
;;;(setq ispell-personal-dictionary "C:/Users/bilsonc/.ispell") 


;;;smooth scrolling
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)


;;;no toolbar
(tool-bar-mode -1)