(use-package web-mode
  :ensure t
  :mode (("\\.html\\'" . web-mode)
         )
  :config (progn
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            )
  )

(provide 'init-web-mode)
