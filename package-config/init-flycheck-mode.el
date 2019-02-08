(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (global-flycheck-mode)
  (setq-default flycheck-disabled-checkets
                '(javascript-jshint))
  (setq flycheck-checkers '(emacs-lisp
                            javascript-eslint
                            sass
                             ))
  (setq flycheck-highlighting-mode 'lines)
  (setq flycheck-indication-mode 'right-fringe)
  )

(use-package flycheck-color-mode-line
             :ensure t
             :diminish flycheck-color-mode-line
             :config
             (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
             )

(provide 'init-flycheck-mode)
