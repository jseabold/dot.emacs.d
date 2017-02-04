(use-package helm-projectile
  :ensure t
  :after evil-leader
  :config
  (evil-leader/set-key
    "p" 'helm-projectile
    "P" 'helm-projectile-switch-project))

(provide 'init-helm-projectile)
