(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


; (color-theme-initialize)
; (color-theme-charcoal-black)

(load-theme 'ample-zen t)

; (set-face-attribute 'default nil :family "Inconsolata" :height 180)

; (add-to-list 'package-archives
;             '("melpa" . "http://melpa.org/packages/") t)
; (add-to-list 'package-archives
;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
; (package-initialize)




;; [Facultative] Only if you have installed async.
(add-to-list 'load-path "/Users/indika/.emacs.d/emacs-async")
(add-to-list 'load-path "/Users/indika/.emacs.d/helm")
(add-to-list 'load-path (file-name-directory (file-truename "emacs-helm.sh")))


(setq mac-command-modifier 'control)

(setq default-frame-alist '((vertical-scroll-bars . nil)
                            (tool-bar-lines . 0)
                            (menu-bar-lines . 0)
                            (fullscreen . nil)))
(blink-cursor-mode -1)
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(global-set-key (kbd "M-x") 'helm-M-x)

(helm :sources '(helm-source-findutils)
      :buffer "*helm-findutils*")

(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" default)))
 '(package-selected-packages (quote (ample-zen-theme ergoemacs-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
