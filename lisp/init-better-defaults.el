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

;; Correct indent by using C-M-\
(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

;; Hippie completion
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; Set response to y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; Always delete and copy recursively
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; Only open one buffer for Dired mode
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x) ;; opens current folder
(setq dired-dwim-target t)


;; Link with the init.el
(provide 'init-better-defaults)
