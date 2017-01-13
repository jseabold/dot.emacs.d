(use-package web-mode
  :mode (
         ("\\.html\\'" . web-mode)
         ("\\.js[x]?\\'" . web-mode)
         ))
:config (setq web-mode-markup-indent-offset 2)

(provide 'init-web-mode)
