;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Sleeker UI
(fringe-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; user bindings
(setq ns-command-modifier (quote meta))
(setq mac-option-modifier 'super)

(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-x g") 'magit-status)

(when (fboundp 'winner-mode)
  (winner-mode 1))
(global-set-key (kbd "C-M-{") 'winner-undo)
(global-set-key (kbd "C-M-}") 'winner-redo)
(global-set-key (kbd "M-]") 'comment-or-uncomment-region)
