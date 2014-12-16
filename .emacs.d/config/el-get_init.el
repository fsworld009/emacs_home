(add-to-list 'load-path "~/.emacs.d/el-get")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;From el-get-recipe.el:
;;We first look in `el-get-sources' then in each directory listed `el-get-recipe-path' in order."
;;(add-to-list 'el-get-recipe-path "~/.emacs/el-get-recipes/")

;;What is init-<package> for?
;;(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")

(el-get 'sync)