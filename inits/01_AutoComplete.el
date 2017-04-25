(setq load-path (cons "~/.emacs.d/elisp/auto-complete" load-path))
;; ファイル内の関数のコンプリート機能
;; 標準関数もコンプリートできる
;; ~/.emacs.d/elisp/auto-complete/auto-complete/dict の中の対応したファイルを編集することで補完を強化できる

;; auto-comleteの設定
(require 'auto-complete "~/.emacs.d/elisp/auto-complete/auto-complete")
(require 'auto-complete-config "~/.emacs.d/elisp/auto-complete/auto-complete-config")

(global-auto-complete-mode t)
(ac-config-default)
