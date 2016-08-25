(setq load-path (cons "~/.emacs.d/elisp" load-path))
;;----
;; カーソル(ポインタ)の点滅の停止
;;----
;(brink-cursor-mode 0)

;;----
;; カーソルの場所の保存
;;----
(require 'saveplace)
(setq-default save-place t)

;;----
;; point-undo
;;----
(require 'point-undo "~/.emacs.d/elisp/point-undo")
(define-key global-map [f7] 'point-undo)
(define-key global-map [S-f7] 'point-redo)

;;----
;; 全体インデント
;;----
(defun all-indent ()
	(interactive)
	(mark-whole-buffer)
	(indent-region (region-beginning)(region-end))
	(point-undo))
(global-set-key (kbd "C-c C-v") 'all-indent)
