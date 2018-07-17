;; カレントバッファのファイルタイプの取得と判別
(defun cb-fn () (file-name-nondirectory (buffer-file-name (current-buffer))))
(defun spritto.c_cb (file-type) (split-string (replace-regexp-in-string
                                                            (concat "." file-type)
                                                            (concat "," file-type)
                                                            (cb-fn)) ","))
(defun calc-last-list-point-1 (file-type) (1- (length (spritto.c_cb file-type))))
(defun cllp-1 (file-type) (calc-last-list-point-1 file-type))
(defun cb-.file-name (file-type) (car (nthcdr (cllp-1 file-type) (spritto.c_cb file-type))))
(defun cb==? (file-type) (interactive)(if (string= file-type (cb-.file-name file-type)) t nil))
(defun check-current-file-size=0 () (if (= 0 (nth 7 (file-attributes (buffer-file-name (current-buffer))))) t nil))
(defun check-current-buffer-size=0 () (if (= 0 (buffer-size (current-buffer))) t nil))
(defun insert-c-template () (interactive)(insert
                                          "#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[]){
"))
(defun ccfs+ict () (interactive)(if (check-current-buffer-size=0) (insert-c-template) nil))
(defun check-new-file (file-type) (if (and (cb==? file-type) (check-current-file-size=0)) t nil))
(defun check-new-c-file () (interactive)(if (and (cb==? "c") (check-current-file-size=0)) t nil))
(defun new-c-file-hook () (if (check-new-c-file) (insert-c-template)))
;(global-unset-key (kbd "C-c C-d"))
(global-set-key (kbd "C-c C-r") 'ccfs+ict)
(global-set-key (kbd "C-c C-f") '(cb==? "c"))
(global-set-key (kbd "C-c C-y") (check-current-buffer-size=0))
;(add-hook 'c-mode-hook (if (and (check-current-buffer-size=0) (cb==? "c")) (message "Why this program dosen't work??")))
;; (check-current-buffer-size=0)
;; (if (/= 0 (nth 7 (file-attributes (buffer-file-name (current-buffer))))) t nil)
