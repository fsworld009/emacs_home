;;; tern installation note:

;;; ~/node/> npm install -g tern
;;; ~/node/> cp -r ./node_modules/tern/node_modules ../.emacs.d/el-get/tern/bin/

;;; the above cp command is to copy dependancy modules of tern to .emacs.d/el-get/tern/bin/
;;; because when emacs runs tern the pwd is bin/, and node.js search for node_modules under pwd
;;; more information on how node.js search for dependencies: 
;;; http://www.bennadel.com/blog/2169-where-does-node-js-and-require-look-for-modules.htm

;;; flycheck hooks
(add-hook 'js-mode-hook (lambda () (flycheck-mode t)))
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'css-mode-hook (lambda () (flycheck-mode t)))
(add-hook 'html-mode-hook (lambda () (flycheck-mode t)))

;; add css support to speedbar
(speedbar-add-supported-extension ".css")
(add-to-list 'speedbar-fetch-etags-parse-list '("\\.css" . speedbar-parse-c-or-c++tag))

;;force emmet-expand-preview, and go back to normal state so that undo-tree can capture states before and after expansion
(defun emmet-expand-with-preview ()
    (interactive)   
    (emmet-expand-line 1)
    (evil-normal-state)
)
(define-key evil-insert-state-map "\C-j" 'emmet-expand-with-preview )

(add-hook 'emmet-mode-hook (lambda () (define-key emmet-mode-keymap (kbd "C-j") 'emmet-expand-with-preview) ) )
(add-hook 'emmet-mode-hook (lambda () (define-key emmet-mode-keymap (kbd "<C-return>") 'emmet-expand-with-preview) ) )