;; Command-Key and Option-Key
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; keybindings
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-co" 'occur)
(global-set-key "\C-c;" 'comment-region)
(global-set-key "\C-c:" 'uncomment-region)
(global-set-key "\C-cm" 'ns-toggle-fullscreen)
