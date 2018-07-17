(setq load-path (cons "~/.emacs.d/elpa/markdown-mode-2.3" load-path))
(require 'markdown-mode)
; (require 'markdown-mode "~/.emacs.d/elpa/markdown-mode-2.3/markdown-mode")
; (require 'markdown-mode-pkg "~/.emacs.d/elpa/markdown-mode-2.3/markdown-mode-pkg")
; (require 'markdown-mode-autoloads "~/.emacs.d/elpa/markdown-mode-2.3/markdown-mode-autoloads")


;; (use-package markdown-mode
;;   :ensure t
;;   :commands (markdown-mode gfm-mode)
;;   :mode (("README\\.md\\'" . gfm-mode)
;;          ("\\.md\\'" . markdown-mode))
;;   :init (setq markdown-command "multimarkdown"))
