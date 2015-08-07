(package-initialize)

(let ((default-directory "/opt/boxen/homebrew/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)


(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "programmer-dv")
(require 'ergoemacs-mode)
(ergoemacs-mode 1)
