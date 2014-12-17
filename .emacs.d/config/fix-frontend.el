;;; tern installation note:

;;; ~/node/> npm install -g tern
;;; ~/node/> cp -r ./node_modules/tern/node_modules ../.emacs.d/el-get/tern/bin/

;;; the above cp command is to copy dependancy modules of tern to .emacs.d/el-get/tern/bin/
;;; because when emacs runs tern the pwd is bin/, and node.js search for node_modules under pwd
;;; more information on how node.js search for dependencies: 
;;; http://www.bennadel.com/blog/2169-where-does-node-js-and-require-look-for-modules.htm


(add-hook 'js-mode-hook (lambda () (flycheck-mode t)))
(add-hook 'js-mode-hook (lambda () (tern-mode t)))

;;add css support to speedbar
(speedbar-add-supported-extension ".css")
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.css" . speedbar-parse-c-or-c++tag))