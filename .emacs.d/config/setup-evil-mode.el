;;;Evil mode settings
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

(evil-mode 1)

;;; hit esc to quit prompt, mini buffers, and evil emacs state
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)


;;;evil-leader bindings
(evil-leader/set-key ",w" 'evil-ace-jump-word-mode)
(evil-leader/set-key ",l" 'evil-ace-jump-line-mode)
(evil-leader/set-key ",c" 'evil-ace-jump-char-mode)
(evil-leader/set-key "u" 'undo-tree-visualize)
(evil-leader/set-key "cc" 'evilnc-comment-or-uncomment-lines)
(evil-leader/set-key "cl" 'evilnc-comment-or-uncomment-to-the-line)
(evil-leader/set-key "cp" 'evilnc-comment-or-uncomment-paragraphs)
(evil-leader/set-key "cy" 'evilnc-copy-and-comment-lines)
(evil-leader/set-key "cr" 'comment-or-uncomment-region)
(evil-leader/set-key "sc" 'evil-surround-change)
(evil-leader/set-key "sd" 'evil-surround-delete)
(evil-leader/set-key "ss" (lambda () (interactive) (call-interactively 'evil-surround-region))) ;need improvement
(evil-leader/set-key "f" 'yafolding-discover)
(evil-leader/set-key "ec" 'edit-color-stamp)

;;;use Tab and S-Tab in insert mode
(define-key evil-insert-state-map (kbd "TAB") 'evil-shift-right-line)
(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)

;;;auto-indent when you hit RET in insert mode
;;;https://gitorious.org/evil/evil/merge_requests/24
(define-key evil-insert-state-map (kbd "RET") 'newline-and-indent)