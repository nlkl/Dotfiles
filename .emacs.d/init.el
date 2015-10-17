;; PACKAGES

;; Add repos
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives)
(push '("melpa" . "https://melpa.org/packages/")
      package-archives)
(package-initialize)

;; Ensure that use-package is installed
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; Load and configure packages
(setq evil-want-C-u-scroll t)
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit))
(use-package powerline
  :ensure
  :config
  (powerline-default-theme)
  (display-time-mode t))
(use-package atom-one-dark-theme
  :ensure t)

;; CUSTOMIZATION

;; General
(global-linum-mode t)

;; Theme
(load-theme 'atom-one-dark t)
(set-frame-font "Consolas-10" nil t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Startup
(setq inhibit-splash-screen t)
(switch-to-buffer "**")
