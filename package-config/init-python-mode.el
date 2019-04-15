(use-package python
  :ensure t
  :diminish python-mode 
  :init
  (progn
    (add-hook 'python-mode-hook 'jedi:setup)
    ;; fill-column-indicator
    (add-hook 'python-mode-hook 'fci-mode)
    (add-hook 'python-mode-hook (lambda()
                                  (flycheck-select-checker `python-flake8)
                                  ))
    )
  )

(provide 'init-python-mode)
