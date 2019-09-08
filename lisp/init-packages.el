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
			     org-pomodoro
			     helm-ag
			     exec-path-from-shell
			     flycheck
			     window-numbering
			     evil-surround
			     evil-nerd-commenter
			     which-key
			     ;; --- Minor Mode ---
			     evil
			     evil-leader
			     yasnippet
			     auto-yasnippet
			     ;; --- Major Mode ---
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
;; Package company mode features
(setq-default company-idle-delay 0.08)
(setq-default company-minimum-prefix-length 1)

;; Package hungry-delete
(global-hungry-delete-mode)

;; Package swiper
(ivy-mode t)
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

;; When using helm-ag, there was an error message
;; "Error running time: (error "Candidates function 'helm-ag--do-ag-candidate-process' should run a process")"
;; To solve this issue, a package called "exec-path-from-shell" and the following were added.
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; flycheck mode
;; TODO: It only works for js mode. Change it later.
(add-hook 'js2-mode-hook 'flycheck-mode)

;; yasnippet
;; It only works for programming language now.
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; evil
(evil-mode t)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)

;; evil-leader-mode
(global-evil-leader-mode t)
;; sets the keybindings start with space
(evil-leader/set-leader "<SPC>")

;; evil-surround
(require 'evil-surround)
(global-evil-surround-mode t)

;; evil-nerd-commenter
;; C-x C-; works for comments
;;(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
;;(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(evilnc-default-hotkeys)

;; add un-emacs states to emacs state, then using hjkl
(dolist (mode '(ag-mode
		flycheck-error-list-mode
		git-rebase-mode))
  (add-to-list 'evil-emacs-state-modes mode))
;; using hjkl in occur mode
(add-hook 'occur-mode-hook
	  (lambda ()
	    (evil-add-hjkl-bindings occur-mode-map 'emacs
	      (kbd "/") 'evil-search-forward
	      (kbd "n") 'evil-search-next
	      (kbd "N") 'evil-search-previous
	      (kbd "C-d") 'evil-scroll-down
	      (kbd "C-u") 'evil-scroll-up
	      )))
;; which-key
(which-key-mode t)
(setq which-key-side-window-location 'right)


;; Link with the init.el
(provide 'init-packages)
