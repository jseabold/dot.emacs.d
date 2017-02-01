;; First install dependencies
;; conda install -y -c asmeurer jedi sexpdata epc virtualenv
;; Then run M-x jedi:install-server
;; If you want to use jedi from other environments, point to this installation
;; explicitly

(use-package jedi
  :ensure t
  :config (progn
            (setq debug-on-error t)
            (setq jedi:server-command
                  ;; ` indicates a backquoted/quasiquoted list
                  ;; the comma indicates which part to evaluate
                  `("~/.miniconda3/bin/python"
                    ,(concat jedi:source-dir "jediepcserver.py")))
            )
  )

(provide 'init-jedi)
