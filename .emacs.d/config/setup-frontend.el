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
;;;(add-hook 'html-mode-hook 'flyspell-prog-mode)
;;;(add-hook 'html-mode-hook '(lambda () (setq 'ispell-skip-html t)))
(add-hook 'css-mode-hook 'flyspell-prog-mode)

;;add scss/css support for speedbar

(speedbar-add-supported-extension ".css")
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.css" . speedbar-parse-c-or-c++tag)) 

(speedbar-add-supported-extension ".scss")
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.scss" . speedbar-parse-c-or-c++tag)) 