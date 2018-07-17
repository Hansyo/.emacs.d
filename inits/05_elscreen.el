;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-20180320.1902" load-path))
;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-buffer-group-20170808.1825" load-path))
;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-fr-20160920.253" load-path))
;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-mew-20160504.1135" load-path))
;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-multi-term-20151021.1933" load-path))
;; (setq load-path (cons "/home/student/j15/j15436/.emacs.d/elpa/elscreen-separate-buffer-list-20161106.1958" load-path))

(require 'elscreen "/home/student/j15/j15436/.emacs.d/elpa/elscreen-20180320.1902/elscreen")

;;; プレフィクスキーはC-d
;; (global-unset-key (kbd "C-j"))
(setq elscreen-prefix-key (kbd "s-a"))
(elscreen-start)
;;; タブの先頭に[X]を表示しない
(setq elscreen-tab-display-kill-screen nil)
;;; header-lineの先頭に[<->]を表示しない
(setq elscreen-tab-display-control nil)
;;; バッファ名・モード名からタブに表示させる内容を決定する(デフォルト設定)
(setq elscreen-buffer-to-nickname-alist
      '(("^dired-mode$" .
         (lambda ()
           (format "Dired(%s)" dired-directory)))
        ("^Info-mode$" .
         (lambda ()
           (format "Info(%s)" (file-name-nondirectory Info-current-file))))
        ("^mew-draft-mode$" .
         (lambda ()
           (format "Mew(%s)" (buffer-name (current-buffer)))))
        ("^mew-" . "Mew")
        ("^irchat-" . "IRChat")
        ("^liece-" . "Liece")
        ("^lookup-" . "Lookup")))
(setq elscreen-mode-to-nickname-alist
      '(("[Ss]hell" . "shell")
        ("compilation" . "compile")
        ("-telnet" . "telnet")
        ("dict" . "OnlineDict")
        ("*WL:Message*" . "Wanderlust")))
