(use-package python
  :ensure t
  :diminish python-mode 
  :init
  (progn
    (add-hook 'python-mode-hook 'jedi:setup)
    ;; fill-column-indicator
    (add-hook 'python-mode-hook 'fci-mode)
    (add-hook 'python-mode-hook (lambda()
                                  (flycheck-select-checker `python-flake8)
                                  ))
    (add-hook 'python-mode-hook (lambda()
                                 (modify-syntax-entry ?_ "w")
                                 ))
    )
  )


(defun blacken-project-is-blackened (&optional display)
  "Whether the project has a pyproject.toml with [tool.black] in it."
  (when-let ((parent (locate-dominating-file default-directory "pyproject.toml")))
    (with-temp-buffer
      (insert-file-contents (concat parent "pyproject.toml"))
      (re-search-forward "^\\[tool.black\\]$" nil t 1))))


(use-package python-black
             :ensure t
             :after python
             :init
             (progn
               (when (blacken-project-is-blackened)
                (add-hook 'python-mode-hook 'python-black-on-save-mode))
             ))

(use-package py-isort
             :ensure t
             :after python
             :init
             (add-hook 'before-save-hook 'py-isort-before-save))

(provide 'init-python-mode)
