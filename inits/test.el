(buffer-file-name (other-buffer))
"/home/student/j15/j15436/.emacs.d/inits/00_NotExtension.el"


(file-name-nondirectory)
(buffer-file-name (current-buffer))


nil
(file-name-nondirectory
 (buffer-file-name (current-buffer)))
(file-name-sans-extension
 (buffer-file-name (current-buffer)))

(if (string-match "apple" "apples") (message "kusa"))
(if (string= "c" (car (nthcdr
                       (1- (length
                            (split-string
                             (replace-regexp-in-string ".c" ",c" "ho.nya.c")
                             ",")))
                       (split-string (replace-regexp-in-string ".c" ",c" "ho.nya.c") ","))))
    (message "kusa"))


(length (split-string "ho.nya.cpp" "."))
(length (split-string (replace-regexp-in-string ".c" ",c" "ho.nya.cpp") ","))
2

2

(string= "cpp" (car (nthcdr (1- (length
                                 (split-string
                                  (replace-regexp-in-string ".c" ",c" "ho.nya.cpp")
                                  ",")))
                            (split-string (replace-regexp-in-string ".c" ",c" "ho.nya.cpp") ","))))


(split-string (replace-regexp-in-string ".c" ",c" "ho.nya.cpp") ",")


;; 完成!!
(defun cb-fn () (file-name-nondirectory (buffer-file-name (current-buffer))))
(defun spritto.c_cb () (split-string (cb-fn) "\\."))
(defun calc-last-list-point-1 () (1- (length (spritto.c_cb))))
(defun cllp-1 () (calc-last-list-point-1))
(defun cb-.file-name () (car (nthcdr (cllp-1) (spritto.c_cb ))))
(defun cb==? (file-type) (if (string= file-type (cb-.file-name)) t nil))
(cb==? "el")
(cb==? "c")
(cb-fn)
(spritto.c_cb)
(calc-last-list-point-1 "el")

(defun spritto.c_cb- (file-type) (split-string (replace-regexp-in-string
                                                "\."
                                                ","
                                                (cb-fn)) ","))

(split-string (replace-regexp-in-string
               "\\."
               ","
               (cb-fn)) ",")
