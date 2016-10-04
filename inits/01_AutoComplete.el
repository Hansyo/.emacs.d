(setq load-path (cons "~/.emacs.d/elisp/auto-complete" load-path))
;; ファイル内の関数のコンプリート機能
;; 標準関数のコンプリート機能ではないことに注意

;; auto-comleteの設定
(require 'auto-complete "~/.emacs.d/elisp/auto-complete/auto-complete")
(require 'auto-complete-config "~/.emacs.d/elisp/auto-complete/auto-complete-config")

(global-auto-complete-mode t)

(defun my-ac-config ()
  (define-key ac-complete-mode-map "\C-n" 'ac-next)
  (define-key ac-complete-mode-map "\C-p" 'ac-previous)
  (add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)
