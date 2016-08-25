(setq load-path (cons "~/.emacs.d/elisp" load-path))

;; inatal-elispコマンドの呼び出し
(require 'install-elisp "~/.emacs.d/elisp/install-elisp")

;; 保存先の指定
(setq install-elisp-respository-directory "~/.emaccs.d/elisp/")
