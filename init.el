(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
(add-to-list 'load-path (expand-file-name "package-config/" user-emacs-directory))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

;; Package Configuration
(require 'package)
(package-initialize)
(setq use-package-always-ensure t)

 ;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package better-defaults
    :ensure t)
             
(use-package solarized-theme
    :config (progn (load-theme 'solarized-dark t)))

(require 'init-flycheck-mode)
(require 'init-autopair)
(require 'init-web-mode)
(require 'init-python-mode)
(require 'init-evil-mode)
