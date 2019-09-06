;; Add syntax into SRC section in org mode
(require 'org)
(setq org-src-fontify-natively t)

;; Agenda for Org mode
(setq org-agenda-files '("~/org"))

;; org TODO template
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Work Plan")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))

;; org-pomodoro
(require 'org-pomodoro)


;; Link with the init.el
(provide 'init-org)
