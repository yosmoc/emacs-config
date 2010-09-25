(require 'anything)
(require 'anything-config)
(setq anything-sources (list anything-c-source-buffers
                             anything-c-source-bookmarks
                             anything-c-source-recentf
                             anything-c-source-file-name-history
                             anything-c-source-locate))
(define-key anything-map (kbd "C-p") 'anything-previous-line)
(define-key anything-map (kbd "C-n") 'anything-next-line)
(define-key anything-map (kbd "C-v") 'anything-next-source)
(define-key anything-map (kbd "M-v") 'anything-previous-source)
(define-key global-map (kbd "C-l") 'anything)
(define-key anything-map "\C-h" 'delete-backward-char)

(require 'anything-show-completion)

(require 'anything-project)
(global-set-key (kbd "C-c C-f") 'anything-project)

(require 'anything-rcodetools)
(setq rct-get-all-methods-command "PAGER=cat fri -l")
(define-key anything-map "\C-q" 'anything-execute-persistent-action)

(require 'anything-migemo)



