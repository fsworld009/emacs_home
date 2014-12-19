;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

;;;fix for magit under Windows
;;;http://stackoverflow.com/questions/885793/emacs-error-when-calling-server-start
(require 'server)
(when (and (>= emacs-major-version 23)
           (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                                 ; ~/.emacs.d/server is unsafe"
                                                 ; on windows.
(server-start)

