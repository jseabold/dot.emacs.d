(use-package js2-mode
  :mode (("\\.js$" . js2-mode)
         ("\\.ts$" . js2-mode)
         )

  :config (progn
            (setq-default js-indent-level 2
                          js-expr-indent-offset -2
                          js-paren-indent-offset 2
                          js2-basic-indent 2
                          js2-basic-offset 2
                          js2-strict-trailing-comma-warning nil)
            )
  )

(provide 'init-js2-mode)
