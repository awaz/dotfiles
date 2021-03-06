;; anything.el の設定
(when (require 'anything nil t)
  (setq
   ;; 候補を表示するまでの時間 デフォルト: 0.5
   anything-idle-delay 0.2
   ;; 候補の最大表示数 デフォルト 50
   anything-candidate-number-limit 50
   ;; 候補が多い時は体感速度を速くする
   anything-quick-update t
   ;; 候補選択ショートカットをアルファベットに
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    ;; root 権限でアクションを実行するときのコマンド
    ;; デフォルト: "su"
    (setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)
  
  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t)))

