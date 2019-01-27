(use-package helm
  :ensure t
  :diminish helm-mode
  :config
  (helm-mode 1)
  (setq helm-autoresize-mode t)
  (setq helm-buffer-max-length 40)
  (set-face-attribute 'helm-selection nil
                      :background "blue"
                      :distant-foreground "white")
  (set-face-attribute 'helm-match nil
                      :background "gray"
                      :foreground "black")
  (set-face-attribute 'helm-buffer-process nil
                      :foreground "white")
  (set-face-attribute 'helm-buffer-size nil
                      :foreground "white")
  ;; M-x is now helm-M-x
  (global-set-key (kbd "M-x") #'helm-M-x)
  ;; Go up a level inside helm with C-k
  (define-key helm-find-files-map (kbd "C-k") 'helm-find-files-up-one-level)
  )

(provide 'init-helm)
