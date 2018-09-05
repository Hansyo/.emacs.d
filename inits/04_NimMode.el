(setq nimsuggest-path "~/.nimble/bin/nimsuggest")

(add-hook 'nim-mode-hook 'nimsuggest-mode)
(add-hook 'nim-mode-hook 'flycheck-mode)
