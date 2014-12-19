(print "Hello World")

;;exec path and environment variables
(load "~/.emacs.d/config/path")

;;el-get
;;list desired packages
(setq my:el-get-packages '())
(load "~/.emacs.d/config/el-get-general")
(load "~/.emacs.d/config/el-get-frontend")

;;required when requiring sr-speedbar
(load "~/.emacs.d/config/ad-advised-definition-p")

;;load/install el-get and packages
(load "~/.emacs.d/config/el-get_init")

;;load global key bindings
(load "~/.emacs.d/config/key-binding")

;;load evil mode settings and key bindings
(load "~/.emacs.d/config/setup-evil-mode")

;;load fixes/extra setup that cannot be done inside ':after' of el-get recipes
(load "~/.emacs.d/config/fix-general")
(load "~/.emacs.d/config/fix-frontend")

;;load general setup
(load "~/.emacs.d/config/setup-general")
(load "~/.emacs.d/config/setup-frontend")