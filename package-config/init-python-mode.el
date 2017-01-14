(use-package anaconda-mode
  :ensure t
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    )
  )

(provide 'init-python-mode)
