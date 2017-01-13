(use-package evil-leader
    :ensure t
    :config (progn 
              (evil-leader/set-leader "<SPC>")
              (evil-leader/set-key
                "w" 'save-buffer
                "h" 'split
                "v" 'vsplit
                "q" 'evil-quit
                )
              (global-evil-leader-mode)))

(use-package evil
  :ensure t
  :after evil-leader
  :diminish undo-tree-mode
  :config (progn (evil-mode 1)))

(use-package evil-escape
  :ensure t
  :after evil
  :diminish evil-escape-mode
  :init 
  (setq evil-escape-key-sequence "jk")
  :config (progn
            (evil-escape-mode)))

(use-package evil-commentary
  :ensure t
  :after evil
  :diminish evil-commentary-mode
  :bind (("S-/" . evil-commentary))
  :init (progn
          (evil-commentary-mode)))

(provide 'init-evil-mode)
