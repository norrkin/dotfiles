;; Package Manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . 
               "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings
                                   starter-kit-eshell zenburn-theme
                                   clojure-mode clojure-test-mode
                                   clojurescript-mode
                                   markdown-mode yaml-mode
                                   marmalade color-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Screen size
(if window-system
    (set-frame-size (selected-frame) 140 40)
    (set-frame-position (selected-frame) 3 90))
    
;; Startup in *scratch* buffer
(setq inhibit-startup-message t)

;; Disable toolbar, menu and scrollbars
(menu-bar-mode -1) (tool-bar-mode -1) (scroll-bar-mode -1)

;; Enable ido-mode
(condition-case err
    (ido-mode t)
  (error ))
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Enable org-mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
