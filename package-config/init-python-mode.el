;; Emacs >= 24.3 supports ipython inferior shell out of the box but
;; IPython >=5.0.0 has a new prompt technology that screws with Emacs.
;; We fix it temporarily using its simple interface.
(when (and (executable-find "ipython")
           (version<= "24.3" emacs-version))

  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "--simple-prompt --pprint"
        python-shell-completion-native-enable nil
        ))

(use-package  anaconda-mode
  :ensure t
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'jedi:setup)
    )
  )

;; Keys
; (with-eval-after-load "python"
;   (define-key python-mode-map (kbd "<f10>") 'python-shell-switch-to-shell)
;   (define-key inferior-python-mode-map (kbd "<f10>") 'delete-window))

(provide 'init-python-mode)
