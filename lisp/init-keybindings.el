;; Set F1 to open the init.el file
(global-set-key (kbd "<f1>") 'open-my-init-file)

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

;; indent-buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; hippie completion
(global-set-key (kbd "s-/") 'hippie-expand)

;; dired mode
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; occur-dwim
(global-set-key (kbd "M-s o") 'occur-dwim)


;; Link with the init.el
(provide 'init-keybindings)
