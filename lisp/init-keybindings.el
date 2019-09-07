;; Set F1 to open the init.el file
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; C-n and C-p for selection in company mode
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; recentf
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; ivy, swiper, and counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; counsel-git
(global-set-key (kbd "C-c p f") 'counsel-git)
;; counsel-im
(global-set-key (kbd "C-c i") 'counsel-imenu)

;; indent-buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; hippie completion
(global-set-key (kbd "s-/") 'hippie-expand)

;; dired mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; occur
(global-set-key (kbd "C-c o") 'occur)
;; occur-dwim
(global-set-key (kbd "C-c o") 'occur-dwim)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; org mode
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c r") 'org-capture)

;; iedit mode
(global-set-key (kbd "C-;") 'iedit-mode)

;; helm-ag
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)


;; Link with the init.el
(provide 'init-keybindings)
