(use-package linum-relative
             :ensure t
             :config
             (progn (linum-mode)
                    (linum-relative-global-mode)
                    (setq linum-relative-current-symbol "")
                    )
             )

(provide 'init-linum)
