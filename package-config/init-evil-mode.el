(use-package evil-leader
    :ensure t
    :config (progn 
              (evil-leader/set-leader "<SPC>")
              (evil-leader/set-key
                "w" 'save-buffer
                "s" 'evil-window-split
                "v" 'evil-window-vsplit
                "q" 'evil-quit
                "t" 'neotree-toggle
                "p" 'neotree-project-dir
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

(use-package evil-numbers
  :ensure t
  :after evil)

(provide 'init-evil-mode)
