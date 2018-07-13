;;==================
;; 絶対に必要な基本設定
;;==================

;;----
;; load-pathの設定
;;----
;; elisp内のファイルを読み込み
;(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;----
;; 文字コードの設定
;;----
(set-default-coding-systems 'utf-8-dos)
;; ただしパスとファイル名はShift_JIS
(setq Default-file-name-coding-system 'sjis-dos)

;;----
;; スタートアップページを表示しない
;;----
(setq inhibit-startup-message t)

;;----
;;行番号表示
;;----
(global-linum-mode t)
(defvar linum-format "%5d ")

;;----
;; カラム番号
;;----
(column-number-mode t)

;;----
;;ビープ音を消す
;;----
(setq ring-bell-function 'ignore)

;;----
;; カーソル行を下線に表示
;;----
(defvar hl-line-face 'underline)
(global-hl-line-mode t)

;;----
;; 時計表示
;;----
;; 不採用    ;; 時間を表示
;; 不採用    (display-time)
(setq display-time-day-and-date t)  ;; 曜日・月・日
(defvar display-time-24hr-format t)   ;; 24時表示
(display-time-mode t)

;;----
;; TABの表示幅
;;----

;;----
;; インデント時にTABでは無くSPACEを挿入する
;;----
(setq-default indent-tabs-mode nil)

;;----
;; ファイルサイズ表示
;;----
(size-indication-mode t)

;;----
;; ツールバーを非表示
;; M-x tool-bar-mode で表示非表示を切り替えられる
;;----
(tool-bar-mode -1)

;;----
;; タイトルバーにフルパス表示
;;----
(setq frame-title-format "%f")

;;----
;; カラーテーマ
;;----
(load-theme 'manoj-dark t)

;;----
;; 全角空白とタブを可視化
;; 参考：http://d.hatena.ne.jp/t_ume_tky/20120906/1346943019
;;----
;;タブや全角空白などを強調表示
(global-whitespace-mode 1)
;; withspace-mode の色の設定
;; http://ergoemacs.org/emacs/whitespace-mode.html
(require 'whitespace)
(setq whitespace-style
      '(face tabs tab-mark spaces space-mark newline newline-mark))
(setq whitespace-display-mappings
      '(
				(tab-mark   ?\t     [?\xBB ?\t])  ; タブ
				(space-mark ?\u3000 [?□])        ;全角スペース
;       (space-mark ?\u0020 [?\xB7])      ; 半角スペース
;       (newline-mark ?\n   [?$ ?\n])     ; 改行記号
        ) )
(setq whitespace-space-regexp "\\([\x0020\x3000]+\\)" )
;正規表現に関する文書。 Emacs Lispには、正規表現リテラルがないことへの言及
;http://www.mew.org/~kazu/doc/elisp/regexp.html
;
;なぜか、全体をグループ化 \(\) しておかないと、うまくマッチしなかった罠
;
(set-face-foreground 'whitespace-space "DimGray")
(set-face-background 'whitespace-space 'nil)
;(set-face-bold-p 'whitespace-space t)
 
(set-face-foreground 'whitespace-tab "DimGray")
(set-face-background 'whitespace-tab "nil")

(set-face-foreground 'whitespace-newline  "DimGray")
(set-face-background 'whitespace-newline "nil")


;;===========================================
;; キーボード操作系
;;===========================================
;;----
;; キーの入れ替えの例
;;----
;; global-set-keyはdefine-keyのラッパーなので、どっちを使ってもOK
;; (define-key global-map (kbd "C-t") 'other-window)
;; (global-set-key (kbd "<C-tab>") 'other-window)

;;----
;; ウィンドウ切り替え
;; SはShiftキーのこと
;; 参考：http://qiita.com/saku/items/6ef40a0bbaadb2cffbce
;;----
(defun other-window-or-split (val)
  (interactive)
	(when (one-window-p)
    ;;(split-window-horizontally) ;split horizonally 縦分割にしたい場合はこちら
    ;;  (split-window-vertically)   ;split vertically 横分割にしたい場合はこちら
    )
  (other-window val))
(global-set-key (kbd "<C-tab>") (lambda () (interactive) (other-window-or-split 1)))
(global-set-key (kbd "<C-S-tab>") (other-window-or-split -1))

;;----
;; 折り返しトグルコマンド
;;----
;;(global-set-key (kbd "C-c l") 'toggle-truncate-limes)

;;----
;; バックスペースをC-hにする
;; デフォルトでは<backspace>は内部的に<del>として扱われている
;; C-hを<del>のシーケンスに上書きする
;;----
(keyboard-translate ?\C-h ?\C-?)

;; Default encoding
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

