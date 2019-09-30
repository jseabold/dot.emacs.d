(use-package sqlup-mode
  :diminish sqlup-mode
  :config
  (add-hook 'sql-mode-hook 'sqlup-mode)
  )

(provide 'init-sql)
