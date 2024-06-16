(when (configuration-layer/package-used-p 'org)

  (defun Tn/agenda-starting-screen ()
    (interactive)
    (Tn/org-agenda-day)
    (split-window-right)
    (windmove-right)
    (Tn/org-journal-setup))


  (defun Tn/org-agenda-todos ()
    (interactive)
    (org-agenda nil "t"))

  (defun Tn/org-agenda-day ()
    (interactive)
    (let ((org-agenda-span 'day))
      (org-agenda nil "c")))

  (defun Tn/org-agenda-week ()
    (interactive)
    (let ((org-agenda-span 'week))
      (org-agenda nil "c")))

  (defun Tn/org-agenda-date-overview ()
    (interactive)
    (let ((org-agenda-start-day "-1d")
          (org-agenda-span '3))
      (org-agenda nil "c")
      (org-roam-dailies-capture-date 1 nil "t")))

  (defun Tn/agenda-clock-in ()
    (interactive)
    (org-agenda-switch-to)
    (evil-previous-visual-line 1)
    (org-clock-in)
    (bury-buffer))

  (defun Tn/agenda-clock-out ()
    (interactive)
    (org-clock-goto)
    (org-clock-out)
    (bury-buffer))

  (defun Tn/org-inherited-priority (s)
    (cond

     ;; Priority cookie in this heading
     ((string-match org-priority-regexp s)
      (* 1000 (- org-priority-lowest
                 (org-priority-to-value (match-string 2 s)))))

     ;; No priority cookie, but already at highest level
     ((not (org-up-heading-safe))
      (* 1000 (- org-priority-lowest org-priority-default)))

     ;; Look for the parent's priority
     (t
      (Tn/org-inherited-priority (org-get-heading)))))

  )
