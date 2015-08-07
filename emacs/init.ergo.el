(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
(require 'ergoemacs-mode)

;; https://ergoemacs.github.io/key-setup.html
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)
