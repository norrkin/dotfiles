;; Package Manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . 
               "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar my-packages '(zenburn-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
