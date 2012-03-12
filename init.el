(add-to-list 'load-path "~/.emacs.d/add-ins/")


(show-paren-mode 1) ;Make emacs highlight the opposite parenthesis or bracket
(setq-default truncate-lines t) ;Stop wrapping lines
(setq-default line-number-mode t) ;Show line numbers in the info bar
(setq-default column-number-mode t) ;Show the column number in the info bar
(global-linum-mode 1) ;Show line numbers along the side
(set-face-attribute 'default nil :height 80) ;Shrink the font a bit

(require 'smarttabs) ;Better tabbing behavior

(setq-default tab-width 4) ;Tab width == 4 spaces
(setq-default indent-tabs-mode nil) ;Use spaces instead of tabs
(setq make-backup-files nil) ;Stop making backup files

;;Some extra C/C++ mode stuff
(defun c-mode-adjustments-hook ()
  (c-set-offset 'inextern-lang 0)
  (c-set-offset 'innamespace 0)
)
(add-hook 'c-mode-common-hook 'c-mode-adjustments-hook)

;;Treat .h files in C++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;Load the color theme stuff
(require 'color-theme)
(require 'zenburn)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
	 (color-theme-zenburn)
    )
)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
