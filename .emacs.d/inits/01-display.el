;; 対応する括弧を光らせる。
(show-paren-mode t)

;; 行間
(setq-default line-spacing 0)


;; メニューバーにファイルパスを表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;;フォントロックモード
(global-font-lock-mode t)

;; スクロールバー消す
(set-scroll-bar-mode 'nil)

;; theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/elisp/themes/")
;; (load-theme 'dark-laptop t t)
;; (enable-theme 'dark-laptop)
(load-theme 'monokai t t)

;; 英語フォント設定
(set-face-attribute 'default nil
      :family "Monaco"
      :height 100)

;; 日本語フォント設定
;; (set-fontset-font
;;   nil 'japanese-jisx0208
;;   (font-spec :family "07YasashisaGothic"))

;; line-number
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d ")


;; フレーム透過設定
(add-to-list 'default-frame-alist '(alpha . (0.93 0.93)))

;; ツールバーを消す
(tool-bar-mode -1)

;; メニューバーを消す
(menu-bar-mode -1)
;; 起動時のメッセージを消す
(setq inhibit-startup-message t)

;; 現在行をハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#222222"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

