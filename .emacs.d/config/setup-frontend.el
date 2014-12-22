;;set html/css indention to 2
(setq html-indent-offset 2)
(setq css-indent-offset 2)

;;evil indention size follows local buffer's major mode
(add-hook 'html-mode-hook
  (function (lambda ()
          (setq evil-shift-width 2))))
(add-hook 'css-mode-hook
  (function (lambda ()
          (setq evil-shift-width 2))))


(add-hook 'js-mode-hook 'flyspell-prog-mode)
(add-hook 'html-mode-hook 'flyspell-prog-mode)
;;;(add-hook 'html-mode-hook '(lambda () (setq 'ispell-skip-html t)))
(add-hook 'css-mode-hook 'flyspell-prog-mode)

;;add css support for speedbar

(speedbar-add-supported-extension ".css")
(setq speedbar-fetch-etags-command "ctags")
(setq speedbar-fetch-etags-arguments '("-e" "-f" "-"))
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.css" . speedbar-parse-c-or-c++tag)) 