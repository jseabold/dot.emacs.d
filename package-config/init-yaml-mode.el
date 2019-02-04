(use-package yaml-mode
             :mode ("\\.[yml|yaml]$" . yaml-mode)
           
  :ensure t
  :defer t
  :bind ("C-m" . newline-and-indent) 
  ) 

(provide 'init-yaml-mode)
