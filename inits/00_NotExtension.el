;;----
;; �Ή����銇�ʂ̋����\��
;;----
(show-paren-mode t)
(defvar show-paren-style 'mixed)

;;----
;; �����Z�[�u�@�\��off�ɂ���
;;----
(setq auto-save-default nil)

;;----
;; �㕔�Ɋ֐����̕\��
;;----
(which-function-mode 1)

;;----
;; �J�[�\���̓_�ł̒�~
;;----
(blink-cursor-mode 0)

;;----
;; dired�ł̈ꊇ�����R�[�h�ϊ�
;;----
;;; dired ���g���āA��C�Ƀt�@�C���� coding system (����) ��ϊ�����
;; m �Ń}�[�N���� F �ňꊇ�ϊ�
(require 'dired-aux)
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "F"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file-contents file)
          (write-region (point-min) (point-max) file))
      (error (setq failure err)))
    (if (not failure)
        nil
      (dired-log "convert coding system error for %s:\n%s\n" file failure)
      (dired-make-relative file))))

(defun dired-do-convert-coding-system (coding-system &optional arg)
  "Convert file (s) in specified coding system."
  (interactive
   (list (let ((default (or dired-default-file-coding-system
                            buffer-file-coding-system)))
           (read-coding-system
            (format "Coding system for converting file (s) (default, %s): "
                    default)
            default))
         current-prefix-arg))
  (check-coding-system coding-system)
  (setq dired-file-coding-system coding-system)
  (dired-map-over-marks-check
   (function dired-convert-coding-system) arg 'convert-coding-system t))
