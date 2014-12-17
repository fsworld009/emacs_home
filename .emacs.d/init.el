(print "Hello World")

;;exec path and environment variables
(load "~/.emacs.d/config/path")



;;load general setup
(load "~/.emacs.d/config/setup-general")

;;el-get
;;list desired packages
(setq my:el-get-packages '())
(load "~/.emacs.d/config/el-get-general")
(load "~/.emacs.d/config/el-get-frontend")

;;required when requiring sr-speedbar
(load "~/.emacs.d/config/ad-advised-definition-p")

;;load/install el-get and packages
(load "~/.emacs.d/config/el-get_init")

;;load general fixes/setups that cannot be done inside ':after' of el-get recipes
(load "~/.emacs.d/config/fix-general")
(load "~/.emacs.d/config/fix-frontend")

;;load evil mode settings and key bindings
(load "~/.emacs.d/config/setup-evil-mode")