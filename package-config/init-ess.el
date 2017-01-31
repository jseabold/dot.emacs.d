(use-package ess-site
 :ensure ess
 :init
 (setq ess-help-own-frame 'one)
 (setq ess-tab-complete-in-script t)
 (setq ess-first-tab-never-complete
       'symbol-or-paren-or-punct)
 )

(add-hook 'ess-mode-hook
          (lambda ()
            (ess-toggle-underscore nil)))

(provide 'init-ess)
