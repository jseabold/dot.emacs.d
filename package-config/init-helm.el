(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (setq helm-autoresize-mode t)
  (setq helm-buffer-max-length 40)
  ;; M-x is now helm-M-x
  (global-set-key (kbd "M-x") #'helm-M-x)
  ;; Go up a level inside helm with C-k
  (define-key helm-find-files-map (kbd "C-k") 'helm-find-files-up-one-level)
  )

(provide 'init-helm)