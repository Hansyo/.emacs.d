(setq load-path (cons "~/.emacs.d/elisp" load-path))
(require 'init-loader-x "~/.emacs.d/elisp/init-loader-x")
(init-loader-load "~/.emacs.d/inits")
