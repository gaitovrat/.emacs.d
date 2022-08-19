(setq inhibit-startup-message t)

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defun install-package (package-name)
  "Install a package by name"
  (unless (package-installed-p package-name)
    (package-refresh-contents)
    (package-install package-name)))

(install-package 'evil)
(install-package 'solarized-theme)

(require 'evil)
(evil-mode 1)

(when (display-graphic-p)
  (load-theme 'solarized-dark t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(solarized-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
