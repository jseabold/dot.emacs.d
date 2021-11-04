(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
(add-to-list 'load-path (expand-file-name "package-config/" user-emacs-directory))
(setq package-archives '(("melpa" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))


(let ((basedir (expand-file-name "custom-themes/" user-emacs-directory)))
  (dolist (f (directory-files basedir t "[^.]"))
    (add-to-list 'custom-theme-load-path f)))
;; Use 16 colors here instead of 256. Make sure terminal palette is set to solarized
;; then it will use the "exact" solarized values from the (terminal) palette and allow
;; use of the fixed 256 color palette here. See solarized-termcolors
(setq solarized-termcolors 16)
;; gnome-terminal + tmux means italics become ... complicated
(setq solarized-italic nil)
(custom-set-variables
    '(frame-background-mode 'dark)
  )
(load-theme 'solarized t)


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
(use-package diminish
  :ensure t)
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
  :ensure t
  :diminish fci-mode
  :config (setq fci-rule-column 80)
  )

(use-package auto-complete
  :ensure t)
(ac-config-default)
(global-auto-complete-mode t)
(eval-after-load "auto-complete"
  '(diminish 'auto-complete-mode))

(eval-after-load "outline"
  '(diminish 'outline-minor-mode))

;; Use default C-c C-e to show eldoc
(global-eldoc-mode -1)

(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list/")))

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
(require 'init-js2-mode)
(require 'init-rjsx-mode)
(require 'init-yaml-mode)
(require 'init-origami)
(require 'init-elisp)
(require 'init-arduino)
(require 'init-platformio)
(require 'init-irony)
