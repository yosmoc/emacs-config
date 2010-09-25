(require 'auto-complete)
(global-auto-complete-mode 1)

(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

(defadvice ac-on-post-command
  (around check-whether-input-type-is-japanese activate)
  (or current-input-method ad-do-it))
