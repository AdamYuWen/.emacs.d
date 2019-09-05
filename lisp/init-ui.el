;; Remove the tool bar
(tool-bar-mode -1)

;; Remove the scroll bar
(scroll-bar-mode -1)

;; Unshow the welcome page
(setq inhibit-splash-screen t)

;; Set cursor to a bar
;;(setq-default cursor-type 'bar)

;; Full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; Highlights the current line
(global-hl-line-mode t)
(set-face-background hl-line-face "darkslategray")
(set-face-attribute 'region nil :background "yellowgreen")


;; Link with the init.el
(provide 'init-ui)
