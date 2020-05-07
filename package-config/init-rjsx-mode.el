(use-package rjsx-mode
  :ensure t
  :mode (("\\.js$" . rjsx-mode)
         ))
:config (progn
          (setq-default js-indent-level 2
                        js2-basic-indent 2
                        js2-basic-offset 2
                        js2-strict-trailing-comma-warning nil
                        ))

(provide 'init-rjsx-mode)
