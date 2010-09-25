(global-font-lock-mode t)  ;文字の色つけ
(display-time)             ;時計を表示
(setq line-number-mode t)  ;カーソルのある行番号を表示
(setq column-number-mode t) ;桁番号表示 
(auto-compression-mode t)  ;日本語infoの文字化け防止
(setq inhibit-startup-message t)
(setq truncate-partial-width-windows nil) ;;C-x 3 の時の折り返し設定
(setq-default indent-tabs-mode nil)

;; symbolic link
(setq vc-follow-symlinks t)

;;keyremap4macbook用
(global-set-key [(control x)(right)] 'find-file)

;; tabはつかわね
(setq-default indent-tabs-mode nil)

;;画面上下の外にスクロールしたときの移動量を1にする設定
(setq scroll-step 1)

;;shebangが付いているファイルのパーミッションを保存時に+xにする
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; バックアップファイルを作成しない
(setq make-backup-files nil)

;; 分割したwindowの移動がshift+矢印で
(windmove-default-keybindings)

;; gzファイルも編集可能に
(auto-compression-mode t)

;; undo
(global-set-key "\C-z" 'undo)

;; toolバーを消す
(tool-bar-mode -1)

;; いちどの kill-line で行全体を削除

(setq kill-whole-line t)

;; バッファの切替え
(iswitchb-mode 1)

;; inline patchを有効にする
(setq default-input-method "MacOSX")

;; auto byte compile
(require 'auto-async-byte-compile)
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; 履歴保存
(savehist-mode 1)

;; ファイル内のカーソルの位置を記憶する
(setq-default save-place t)
(require 'saveplace)

;; GCを減らす
(setq gc-cons-threshold (* 20 gc-cons-threshold))

;; ログ履歴の記録行数を増やす
(setq message-log-max 10000)
(setq history-length 10000)

;; minibufferの再帰呼出
(setq enable-recursive-miniburres t)

;; キーストロークをechoエリアに早く表示する
(setq echo-keystrokes 0.1)

;; yes = y
(defalias 'yes-or-no-p 'y-or-n-p)

;; 画面をちかちかさせない
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; 
(require 'sense-region)
(sense-region-on)
