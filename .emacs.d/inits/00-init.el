;; 文字コード設定
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

;; backspace を delete として使う
(normal-erase-is-backspace-mode 1)

;; scratch の初期メッセージ消去
(setq initial-scratch-message "")

;; file 名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; yes-noの選択肢をy-nにする
(fset 'yes-or-no-p 'y-or-n-p)

;; Auto save file を作らない
(setq auto-save-default nil)

;; backup file の場所指定
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$*" (expand-file-name "~/.emacs.d/.backup"))
            backup-directory-alist))

;; C-k
(setq kill-whole-line t)

;; tab to space
(setq-default tab-width 3 indent-tabs-mode nil)

;; GCを減らして軽くする
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; 自動再読み込み
(global-auto-revert-mode 1)

;; 定義マクロファイル設定
(defvar kmacro-save-file "~/.emacs.d/inits/70-mymacros.el")

;; 最後に改行が無いときは挿入
(setq require-final-newline t)
(setq mode-require-final-newline t)
