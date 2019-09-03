;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Add resources for packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )
(require 'cl)

;; Add packages
(defvar adamyuwen/packages '(
			     company
			     monokai-theme
			     hungry-delete
			     swiper
			     counsel
			     smartparens
			     )  "Default packages")

(setq package-selected-packages adamyuwen/packages)

(defun adamyuwen/packages-installed-p ()
  (loop for pkg in adamyuwen/packages
	when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (adamyuwen/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg adamyuwen/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Remove the tool bar
(tool-bar-mode -1)
;; Remove the scroll bar
(scroll-bar-mode -1)
;; Unshow the welcome page
(setq inhibit-splash-screen t)
;; Set the line number
(global-linum-mode t)
;; Set theme
(load-theme 'monokai t)
;; Set cursor to a bar
(setq-default cursor-type 'bar)

;; Set F1 to open the init.el file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; Set the company mode
(global-company-mode t)
(setq-default company-idle-delay 0.08)
(setq-default company-minimum-prefix-length 1)
;; Do NOT create back-up files
(setq make-backup-files nil)
;; Add syntax into SRC section in org mode
(require 'org)
(setq org-src-fontify-natively t)
;; Set recentf mode
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;; Replace the selected text
(delete-selection-mode t)
;; Full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; Shows the matched parentheses
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; Highlights the current line
(global-hl-line-mode t)
;; Package hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)
;; Package swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x f") 'counsel-describe-function)
(global-set-key (kbd "C-x v") 'counsel-describe-variable)
;; Package smartparents
(require 'smartparens-config)
(smartparens-global-mode t)
;; Agenda for Org mode
;;(setq org-agenda-files '("~/org"))
;;(global-set-key (kbd "C-c a") 'org-agenda)

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
