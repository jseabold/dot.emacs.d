(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
(add-to-list 'load-path (expand-file-name "package-config/" user-emacs-directory))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(setq inhibit-startup-screen 1)

;; Package Configuration
(require 'package)
(package-initialize)
(setq use-package-always-ensure t)

 ;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package) )
(require 'diminish)
(require 'bind-key)

(use-package better-defaults
    :ensure t)

(use-package solarized-theme
    :config (progn (load-theme 'solarized-dark t)))
(use-package evil-surround
    :ensure t
    :config (global-evil-surround-mode 1)
     )
(use-package xclip
             :ensure t
             :config (xclip-mode 1)
             )

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; Shell Setup
(setq explicit-shell-file-name "/bin/bash")

;;; highlight long lines, trailing whitespace
(use-package whitespace
  :diminish whitespace-mode
  :diminish global-whitespace-mode
  :config (global-whitespace-mode t)
  :init (setq whitespace-style '(face empty tabs lines-tail trailing))
  )

(setq vc-follow-symlinks t)

(use-package fill-column-indicator
  :diminish fci-mode
  :config (setq fci-rule-column 80)
  )

(eval-after-load "auto-complete"
  '(diminish 'auto-complete-mode))

(eval-after-load "outline"
  '(diminish 'outline-minor-mode))

(require 'init-yasnippet)
(require 'init-linum)
(require 'init-markdown-mode)
(require 'init-flycheck-mode)
(require 'init-magit)
(use-package evil-magit
             :ensure t
             )
(require 'init-jedi)
(require 'init-autopair)
(require 'init-web-mode)
(require 'init-python-mode)
(require 'init-cython-mode)
(require 'init-ess)
(require 'init-neotree)
(require 'init-helm)
(require 'init-projectile)
(require 'init-helm-projectile)
(require 'init-sql-upcase)
(require 'init-evil-mode)
