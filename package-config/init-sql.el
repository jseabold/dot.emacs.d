(use-package sqlup-mode
  :diminish sqlup-mode
  :config
  (add-hook 'sql-mode-hook 'sqlup-mode)
  )

(use-package sql-indent
             :diminish sql-indent
             :hook (sql-mode . sqlind-minor-mode)
             )

(use-package sql
             :config
             (add-hook 'sql-mode-hook
                       '(lambda ()
                          (flycheck-select-checker 'sql-sqlint)
                          ))
             )

(provide 'init-sql)
