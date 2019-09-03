;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Link with the init-packages.el
(require 'init-packages)

;; Remove the tool bar
(tool-bar-mode -1)
;; Remove the scroll bar
(scroll-bar-mode -1)
;; Unshow the welcome page
(setq inhibit-splash-screen t)
;; Set the line number
(global-linum-mode t)
;; Set cursor to a bar
(setq-default cursor-type 'bar)
;; Automatically refresh files
(global-auto-revert-mode t)
;; Disable audio ring bell
(setq ring-bell-function 'ignore)
;; Replace the selected text
(delete-selection-mode t)
;; Full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; Shows the matched parentheses
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; Highlights the current line
(global-hl-line-mode t)

;; Set F1 to open the init.el file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; Package company mode features
(setq-default company-idle-delay 0.08)
(setq-default company-minimum-prefix-length 1)

;; Do NOT create back-up files
(setq make-backup-files nil)
;; Do NOT create auto-save-list folder
(setq auto-save-default nil)

;; Add syntax into SRC section in org mode
(require 'org)
(setq org-src-fontify-natively t)

;; Set recentf mode
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Package ivy key binding
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x f") 'counsel-describe-function)
(global-set-key (kbd "C-x v") 'counsel-describe-variable)

;; Agenda for Org mode
;;(setq org-agenda-files '("~/org"))
;;(global-set-key (kbd "C-c a") 'org-agenda)

;; Create shortcuts for words
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("ayw" "adamyuwen")
					    ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
