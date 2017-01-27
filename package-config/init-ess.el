(use-package ess-site
 :ensure ess
 :init
 (setq ess-help-own-frame 'one)
 (setq ess-tab-complete-in-script t)
 (setq ess-first-tab-never-complete
       'symbol-or-paren-or-punct)
 )

(provide 'init-ess)
