(use-package neotree
  :ensure t
  :defer
  :config
  (evil-set-initial-state 'neotree-mode 'normal)
  (evil-define-key 'normal neotree-mode-map
    (kbd "RET") 'neotree-enter
    (kbd "c") 'neotree-create-node
    (kbd "r") 'neotree-rename-node
    (kbd "d") 'neotree-delete-node
    (kbd "j") 'neotree-next-line
    (kbd "k") 'neotree-previous-line
    (kbd "g") 'neotree-refresh
    (kbd "C") 'neotree-change-root
    (kbd "H") 'neotree-hidden-file-toggle
    (kbd "q") 'neotree-hide
    )
 )

(provide 'init-neotree)
