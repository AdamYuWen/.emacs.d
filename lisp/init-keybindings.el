;; Set F1 to open the init.el file
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; recentf
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; ivy, swiper, and counsel
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x f") 'counsel-describe-function)
(global-set-key (kbd "C-x v") 'counsel-describe-variable)

;; counsel-git
(global-set-key (kbd "C-c p f" 'counsel-git))


;; Link with the init.el
(provide 'init-keybindings)
