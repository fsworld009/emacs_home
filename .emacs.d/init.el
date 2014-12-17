;;exec path
(print "Hello World")
(add-to-list 'exec-path "C:/Program Files (x86)/git/bin/")

;;el-get
(setq my:el-get-packages '())
(load "~/.emacs.d/config/el-get-sources")
(load "~/.emacs.d/config/el-get_init")

