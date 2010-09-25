(ffap-bindings)

;; ファイル名が被った場合にバッファ名を分かりやすくする
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; 最近使ったファイルを開く
(setq recentf-max-saved-items 500)
(require 'recentf-ext)

;; 使わないバッファいを自動的に消す
(require 'tempbuf)
(add-hook 'find-file-hooks 'turn-on-tempbuf-mode)
(add-hook 'dired-mode-hooks 'turn-on-tempbuf-mode)
