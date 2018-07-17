(require 'anthy "~/Anthy/anthy")
(global-set-key (kbd "<zenkaku-hankaku>") 'anthy-mode)
(anthy-mode)
(set-process-query-on-exit-flag (get-process "anthy-agent") nil)

