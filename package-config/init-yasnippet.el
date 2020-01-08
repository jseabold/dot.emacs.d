(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :config
  (setq yas-snippet-dirs
        '("~/.emacs.d/snippets"
          "~/.emacs.d/yasnippet-snippets"))
  (yas-global-mode 1)
  )

(provide 'init-yasnippet)
