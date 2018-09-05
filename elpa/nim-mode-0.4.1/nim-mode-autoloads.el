;;; nim-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "flycheck-nimsuggest" "flycheck-nimsuggest.el"
;;;;;;  (23439 50952 490716 727000))
;;; Generated autoloads from flycheck-nimsuggest.el

(add-hook 'nimsuggest-mode-hook 'flycheck-nimsuggest-setup)

(autoload 'flycheck-nim-nimsuggest-start "flycheck-nimsuggest" "\
Start nimsuggest’s ‘chk’ method syntax check with CHECKER.

CALLBACK is the status callback passed by Flycheck.

\(fn CHECKER CALLBACK)" nil nil)

(autoload 'flycheck-nimsuggest-setup "flycheck-nimsuggest" "\
Setup flycheck configuration for nimsuggest.

\(fn)" nil nil)

(eval-after-load "flycheck" '(progn (flycheck-define-generic-checker 'nim-nimsuggest "A syntax checker for Nim lang using nimsuggest.\n\nSee URL `https://github.com/nim-lang/nimsuggest'." :start 'flycheck-nim-nimsuggest-start :modes '(nim-mode nimscript-mode) :predicate (lambda nil (and (bound-and-true-p nim-use-flycheck-nimsuggest) (nimsuggest-available-p)))) (add-to-list 'flycheck-checkers 'nim-nimsuggest)))

;;;***

;;;### (autoloads nil "nim-capf" "nim-capf.el" (23439 50952 382752
;;;;;;  541000))
;;; Generated autoloads from nim-capf.el

(autoload 'nim-capf-nimsuggest-completion-at-point "nim-capf" "\
Complete the symbol at point using nimsuggest.

\(fn)" nil nil)

(autoload 'nim-builtin-completion-at-point "nim-capf" "\
Complete the symbol at point for .nim files.

\(fn)" nil nil)

(autoload 'nimscript-builtin-completion-at-point "nim-capf" "\
Complete the symbol at point for nimscript files.

\(fn)" nil nil)

(autoload 'nim-capf-setup "nim-capf" "\
Setup.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "nim-compile" "nim-compile.el" (23439 50952
;;;;;;  406744 582000))
;;; Generated autoloads from nim-compile.el

(autoload 'nim-compile "nim-compile" "\
Compile and execute the current buffer as a nim file.
All output is written into the *nim-compile* buffer.
If you put COMMAND argument, you can specify the compilation command.

\(fn &optional COMMAND)" t nil)

;;;***

;;;### (autoloads nil "nim-eldoc" "nim-eldoc.el" (23439 50952 438733
;;;;;;  971000))
;;; Generated autoloads from nim-eldoc.el

(autoload 'nim-eldoc-function "nim-eldoc" "\
Return a doc string appropriate for the current context, or nil.

\(fn)" t nil)

(autoload 'nim-eldoc-on "nim-eldoc" "\
This may or may not work.  Maybe this configuration has to set on.
Major-mode configuration according to the document.

\(fn)" t nil)

(autoload 'nim-eldoc-setup "nim-eldoc" "\


\(fn &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "nim-mode" "nim-mode.el" (23439 50952 390749
;;;;;;  888000))
;;; Generated autoloads from nim-mode.el

(autoload 'nim-mode "nim-mode" "\
A major mode for the Nim programming language.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.nim\\'" . nim-mode))

;;;***

;;;### (autoloads nil "nim-suggest" "nim-suggest.el" (23439 50952
;;;;;;  422739 276000))
;;; Generated autoloads from nim-suggest.el

(autoload 'nimsuggest-available-p "nim-suggest" "\
Return non-nil if nimsuggest is available in current buffer.

\(fn)" nil nil)

(autoload 'nimsuggest-mode "nim-suggest" "\
Minor mode for nimsuggest.

\(fn &optional ARG)" t nil)

(autoload 'nimsuggest-flymake-setup "nim-suggest" "\
Kinda experimental function to use flymake on Emacs 26.

\(fn)" nil nil)

(autoload 'nimsuggest-eldoc--nimsuggest "nim-suggest" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "nimscript-mode" "nimscript-mode.el" (23439
;;;;;;  50952 414741 929000))
;;; Generated autoloads from nimscript-mode.el

(autoload 'nimscript-mode "nimscript-mode" "\
A major-mode for NimScript files.
This major-mode is activated when you enter *.nims and *.nimble
suffixed files, but if it’s .nimble file, also another logic is
applied. See also ‘nimscript-mode-maybe’.

\(fn)" t nil)

(autoload 'nimscript-mode-maybe "nimscript-mode" "\
Most likely turn on ‘nimscript-mode’.
In *.nimble files, if the first line sentence matches
‘nim-nimble-ini-format-regex’, this function activates ‘conf-mode’
instead.  The default regex’s matching word is [Package].

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.nim\\(ble\\|s\\)\\'" . nimscript-mode-maybe))

;;;***

;;;### (autoloads nil nil ("nim-fill.el" "nim-helper.el" "nim-mode-pkg.el"
;;;;;;  "nim-rx.el" "nim-smie.el" "nim-syntax.el" "nim-util.el" "nim-vars.el")
;;;;;;  (23439 50952 507470 679000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; nim-mode-autoloads.el ends here
