;;----
;; 対応する括弧の強調表示
;;----
(show-paren-mode t)
(defvar show-paren-style 'mixed)

;;----
;; 自動セーブ機能をoffにする
;;----
(setq auto-save-default nil)

;;----
;; 下部に関数名の表示
;;----
(which-function-mode 1)

;;----
;; カーソルの点滅の停止
;;----
(blink-cursor-mode 0)

;;----
;; ペインの移動
;;----
;; C-c + 矢印キー
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;;----
;; ファイルの自動再読み込み
;; ファイルの再読み込み
;;----
(setq global-auto-revert-mode t)
(defun revert-buffer-no-confirm (&optional force-reverting)
  "Interactive call to revert-buffer. Ignoring the auto-save
 file and not requesting for confirmation. When the current buffer
 is modified, the command refuses to revert it, unless you specify
 the optional argument: force-reverting to true."
  (interactive "P")
  ;;(message "force-reverting value is %s" force-reverting)
  (if (or force-reverting (not (buffer-modified-p)))
      (revert-buffer :ignore-auto :noconfirm)
    (error "The buffer has been modified")))
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)

