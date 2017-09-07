;; Package initialization
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(use-package flycheck
	     :ensure t)
(use-package markdown-mode
	     :ensure t)
(use-package yaml-mode
	     :ensure t)
(use-package jinja2-mode
	     :ensure t)
(use-package magit
	     :ensure t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Emacs Daemon fun
(global-unset-key (kbd "C-x C-d"))
(global-set-key (kbd "C-x C-d") 'kill-emacs)

;; Stupid Emacs suspend
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z C-z") 'suspend-emacs)

;; Default Environment
(setq inhibit-startup-screen t)
(line-number-mode t)
(column-number-mode t)
(menu-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-subword-mode t)
(delete-selection-mode t)
(global-linum-mode t)
(setq linum-format "%4d ")
(setq-default require-final-newline t)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Tabs
(setq standard-indent 4)
(setq tab-width 4)
(define-key text-mode-map (kbd "TAB") 'self-insert-command)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'molokai t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (## yaml-mode markdown-mode flycheck use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
