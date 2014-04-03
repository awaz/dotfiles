(require 'smartrep)

(require 'tabbar)
(tabbar-mode)
(global-set-key "\M-]" 'tabbar-forward) ;; next tab
(global-set-key "\M-[" 'tabbar-backward) ;; prev tab

;; グループを使わない
(setq tabbar-buffer-groups-function nil)

;; 色設定
(set-face-attribute
  'tabbar-default nil
   :background "white"
   :family "Monaco"
   :height 1.0)
(set-face-attribute ;; active
  'tabbar-selected nil
   :background "black"
   :foreground "white"
   :weight 'bold
   :box nil)
(set-face-attribute ;; not active
  'tabbar-unselected nil
   :background "white"
   :foreground "black"
   :box nil)

(require 'powerline)
(powerline-default-theme)
