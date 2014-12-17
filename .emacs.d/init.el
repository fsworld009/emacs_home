;;exec path
(print "Hello World")
(add-to-list 'exec-path "C:/Program Files (x86)/git/bin/")

;;el-get
;;list desired packages
(load "~/.emacs.d/config/el-get-sources")

;;required when requiring sr-speedbar
(load "~/.emacs.d/config/ad-advised-definition-p")

;;load/install el-get and packages
(load "~/.emacs.d/config/el-get_init")

;;load general settings

;;load general fixes/setups that cannot be done inside ':after' of el-get recipes
;;(load "~/.emacs.d/config/general-fix")

;;load evil-mode and evil-leader custom key bindings
