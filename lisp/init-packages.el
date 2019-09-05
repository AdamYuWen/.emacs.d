;; Add resources for packages
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; cl - Comman Lisp Extension
(require 'cl)

;; Add Packages
(defvar adamyuwen/packages '(
			     ;; --- Auto-completion ---
			     company
			     ;; --- Better Editor ---
			     hungry-delete
			     swiper
			     counsel
			     smartparens
			     popwin
			     expand-region
			     iedit
			     ;; --- Major Mode ---
			     ;; --- Minor Mode ---
			     ;; --- Themes ---
			     monokai-theme
			     ) "Default packages")

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

;; Package company
(global-company-mode t)

;; Package hungry-delete
(global-hungry-delete-mode)

;; Package swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; Package smartparents
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil) ;; In emacs-lisp, won't pair ' sign

;; Package popwin
(require 'popwin)
(popwin-mode t)

;; Package iedit
(require 'iedit)

;; Set theme
(load-theme 'monokai t)


;; Link with the init.el
(provide 'init-packages)
