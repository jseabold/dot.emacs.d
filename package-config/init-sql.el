(use-package sqlup-mode
  :ensure t
  :diminish sqlup-mode
  :config
  (add-hook 'sql-mode-hook 'sqlup-mode)
  )

(use-package sql-indent
             :ensure t
             :diminish sql-indent
             :hook (sql-mode . sqlind-minor-mode)
             )

(use-package sql
             :ensure t
             :config
             (add-hook 'sql-mode-hook
                       '(lambda ()
                          (flycheck-select-checker 'sql-sqlint)
                          ))
             )

(provide 'init-sql)
