;;; org-pomodoro-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "org-pomodoro" "org-pomodoro.el" (23921 31140
;;;;;;  349169 546000))
;;; Generated autoloads from org-pomodoro.el

(autoload 'org-pomodoro "org-pomodoro" "\
Start a new pomodoro or stop the current one.

When no timer is running for `org-pomodoro` a new pomodoro is started and
the current task is clocked in.  Otherwise EMACS will ask whether we´d like to
kill the current timer, this may be a break or a running pomodoro.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("org-pomodoro-pidgin.el" "org-pomodoro-pkg.el")
;;;;;;  (23921 31140 353501 866000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; org-pomodoro-autoloads.el ends here
