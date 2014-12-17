;;exec path
(add-to-list 'exec-path "C:/Program Files (x86)/git/bin/")
(add-to-list 'exec-path "~/node/")
(add-to-list 'exec-path "~/ctags/")

;;environment variables

;;default directory
;;disable startup message because it overrides default-directory to emacs/bin
(setq inhibit-startup-message t)
(setq default-directory "D:/Program/" )