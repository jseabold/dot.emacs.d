(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
(add-to-list 'load-path (expand-file-name "package-config/" user-emacs-directory))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))


(setq inhibit-startup-screen 1)

;; Package Configuration
(require 'package)
;; package-initialize isn't necessary in emacs 27 anymore. not running 27 everywhere.
(ignore-errors (package-initialize))

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

;; highlight long lines, trailing whitespace
(use-package whitespace
  :ensure nil
  :diminish whitespace-mode
  :diminish global-whitespace-mode
  :config (global-whitespace-mode t)
  :init (setq whitespace-style '(face empty tabs lines-tail trailing))
  )

(setq vc-follow-symlinks t)

(electric-pair-mode t)

(use-package fill-column-indicator
  :diminish fci-mode
  :config (setq fci-rule-column 80)
  )

(ac-config-default)
(global-auto-complete-mode t)
(eval-after-load "auto-complete"
  '(diminish 'auto-complete-mode))

(eval-after-load "outline"
  '(diminish 'outline-minor-mode))

;; Use default C-c C-e to show eldoc
(global-eldoc-mode -1)

(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list")))

(require 'init-yasnippet)
(require 'init-linum)
(require 'init-markdown-mode)
(require 'init-flycheck-mode)
(require 'init-magit)
(use-package evil-magit
             :ensure t
             )
(require 'init-jedi)
(require 'init-web-mode)
(require 'init-python-mode)
(require 'init-cython-mode)
(require 'init-ess)
(require 'init-neotree)
(require 'init-helm)
(require 'init-projectile)
(require 'init-helm-projectile)
(require 'init-sql)
(require 'init-yaml-mode)
(require 'init-evil-mode)
(require 'init-rjsx-mode)
(require 'init-yaml-mode)
(require 'init-origami)
(require 'init-elisp)
