(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown")
  (setq markdown-fontify-code-blocks-natively t)
  :config
  (set-face-attribute 'markdown-link-face nil
                      :foreground "blue")
  (set-face-attribute 'markdown-header-face nil
                      :foreground "#dc322f"
                      :height 1.2
                      :weight 'bold
                      )
  (set-face-attribute 'markdown-header-face-1 nil
                      :inherit 'markdown-header-face
                      :height 1.15)
  (set-face-attribute 'markdown-header-face-2 nil
                      :inherit 'markdown-header-face
                      :height 1.10)
  (set-face-attribute 'markdown-header-face-3 nil
                      :inherit 'markdown-header-face
                      :height 1.05)
  (set-face-attribute 'markdown-header-face-4 nil
                      :inherit 'markdown-header-face
                      :height 1.025)
  (set-face-attribute 'markdown-header-face-5 nil
                      :inherit 'markdown-header-face
                      :height 1.0)
  (set-face-attribute 'markdown-header-face-6 nil
                      :inherit 'markdown-header-face
                      :height 1.0)
  (set-face-attribute 'markdown-header-delimiter-face nil
                      :inherit 'markdown-header-face
                      :height 1.0)
  )

(provide 'init-markdown-mode)
