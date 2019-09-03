;; Create shortcuts for words
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("ayw" "adamyuwen")
					    ))

;; Set the line number
(global-linum-mode t)

;; Automatically refresh files
(global-auto-revert-mode t)

;; Disable audio ring bell
(setq ring-bell-function 'ignore)

;; Do NOT create back-up files
(setq make-backup-files nil)

;; Do NOT create auto-save-list folder
(setq auto-save-default nil)

;; recentf mode
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; Replace the selected text
(delete-selection-mode t)

;; Shows the matched parentheses
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;; Link with the init.el
(provide 'init-better-defaults)
