;;set css indention to 2
(setq css-indent-offset 2)

;;add css support for speedbar

(speedbar-add-supported-extension ".css")
(setq speedbar-fetch-etags-command "ctags")
(setq speedbar-fetch-etags-arguments '("-e" "-f" "-"))
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.css" . speedbar-parse-c-or-c++tag))