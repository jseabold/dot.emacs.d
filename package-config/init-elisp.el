(defun inhibit-closed-quote (char)
  "Return true if char ' is used"
  (if (eq char ?') t nil)
  )
;; don't close single quotes in emacs-lisp mode
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
             (setq electric-pair-inhibit-predicate 'inhibit-closed-quote)))

(add-hook 'emacs-lisp-mode-hook (lambda() (modify-syntax-entry ?- "w")))
(provide 'init-elisp)
