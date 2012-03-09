(add-to-list 'load-path "~/.emacs.d/add-ins/")

(require 'color-theme)
(require 'color-theme-zenburn)
(color-theme-initialize)
(color-theme-zenburn)

;Use only spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-basic-offset 4)
