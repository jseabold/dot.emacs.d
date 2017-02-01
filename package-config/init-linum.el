(use-package linum-relative
  :diminish linum-relative-mode
  :ensure t
  :config
  (progn (linum-mode)
         (linum-relative-global-mode)
         (setq linum-relative-current-symbol "")
         )
)

(provide 'init-linum)
