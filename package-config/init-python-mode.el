(use-package anaconda-mode
  :ensure t
  :diminish anaconda-mode
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'jedi:setup)
    )
  )

(provide 'init-python-mode)
