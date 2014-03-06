(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setf inhibit-splash-screen t)
;(switch-to-buffer (find-file "~/org/timelogs/timelog-akeenan.org"))
;(delete-other-windows)

(add-to-list 'load-path "~/.emacs.d/")
(require 'django-html-mode)
(require 'django-mode)
;(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")
;(require 'yasnippet)
;(yas/load-directory "~/.emacs.d/snippets")

(setq warning-minimum-level :error)

(load "shh-mumamo")
(load "~/.emacs.d/nxhtml/autostart.el")
(setq mumamo-background-colors nil)

(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))

(fset 're-dent
   [?\C-u ?- ?1 ?0 ?0 ?0 ?\C-x tab ?\C-\M-\\])

(defun move-line-up ()
    (interactive)
      (transpose-lines 1)
        (forward-line -2))

(defun move-line-down ()
    (interactive)
      (forward-line 1)
        (transpose-lines 1)
          (forward-line -1))
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

(require 'linum+)
