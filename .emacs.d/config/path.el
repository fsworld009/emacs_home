;;exec path
(add-to-list 'exec-path "C:/Program Files (x86)/git/bin/")
(add-to-list 'exec-path "~/node/")
(add-to-list 'exec-path "~/ctags/")
(add-to-list 'exec-path "~/python2/")
(add-to-list 'exec-path "~/Aspell/bin/")
(add-to-list 'exec-path "~/tidy/")
(add-to-list 'exec-path "~/ruby/bin/")
(setenv "PATH" (concat (getenv "PATH") ";" (getenv "HOME") "\\ruby\\bin") )

;;environment variables
(setenv "GIT_ASKPASS" "git-gui--askpass")

;;default directory
;;disable startup message because it overrides default-directory to emacs/bin
(setq inhibit-startup-message t)
(setq default-directory "D:/Program/" )