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
    (add-hook 'python-mode-hook (lambda()
                                 (modify-syntax-entry ?_ "w")
                                 ))
    )
  )

(use-package python-black
             :ensure t
             :after python
             :init
             (progn
               (add-hook 'python-mode-hook 'python-black-on-save-mode)
             ))

(provide 'init-python-mode)
