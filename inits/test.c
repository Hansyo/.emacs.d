(setq my-current-file-name (file-name-nondirectory
                                (buffer-file-name (current-buffer))))
(defun current-buffer=c () (if (string= "c" (car (nthcdr
                        (1- (length
                             (split-string
                              (replace-regexp-in-string ".c" ",c" (file-name-nondirectory
                                               (buffer-file-name (current-buffer))))
                              ",")))
                               (split-string (replace-regexp-in-string ".c" ",c"
                                              (file-name-nondirectory
                                               (buffer-file-name (current-buffer)))) ","))))
                  t
                    nil))
(current-buffer=c)
(my-current-file-name)
