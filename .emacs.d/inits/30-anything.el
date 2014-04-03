;; anything.el ������
(when (require 'anything nil t)
  (setq
   ;; �����ɽ������ޤǤλ��� �ǥե����: 0.5
   anything-idle-delay 0.2
   ;; ����κ���ɽ���� �ǥե���� 50
   anything-candidate-number-limit 50
   ;; ���䤬¿�������δ�®�٤�®������
   anything-quick-update t
   ;; �������򥷥硼�ȥ��åȤ򥢥�ե��٥åȤ�
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    ;; root ���¤ǥ���������¹Ԥ���Ȥ��Υ��ޥ��
    ;; �ǥե����: "su"
    (setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)
  
  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t)))
