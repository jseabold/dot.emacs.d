(use-package magit
  :ensure t
  :config
  (progn
    ;; highlight word/letter changes in hunk diffs
    (setq magit-diff-refine-hunk t))
  )

(provide 'init-magit)
