(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
(add-to-list 'load-path (expand-file-name "package-config/" user-emacs-directory))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

;; so it is written
(setq-default indent-tabs-mode nil)

;; Package Configuration

(require 'package)
(package-initialize)

 ;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package solarized-theme
    :ensure t
    :config (progn (load-theme 'solarized-dark t)))

(require 'init-autopair)
(require 'init-evil-mode)
