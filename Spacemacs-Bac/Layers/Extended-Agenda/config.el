(when (configuration-layer/package-used-p 'org)


  (setq org-agenda-start-on-weekday 0
        org-agenda-skip-scheduled-if-done t
        org-agenda-skip-deadline-if-done t
        org-deadline-warning-days 30
        org-agenda-dim-blocked-tasks nil
        org-agenda-include-deadlines t
        org-agenda-window-setup 'current-window
        org-agenda-block-separator #x2501
        org-agenda-show-all-dates t
        org-agenda-compact-blocks t
        org-agenda-start-with-log-mode t
        org-agenda-time-leading-zero t
        org-icalendar-combined-name "OrgCal"
        org-icalendar-store-UID t
        org-icalendar-alarm-time 30
        calendar-date-style 'iso
        calendar-mark-holidays-flag t
        calendar-week-start-day 0
        org-agenda-insert-diary-extract-time t
        calendar-mark-diary-entries-flag t
        holiday-local-holidays nil
        holiday-bahai-holidays nil
        holiday-oriental-holidays nil
        holiday-other-holidays nil
        org-agenda-include-diary t
        org-combined-agenda-icalendar-file "~/Apocrypha/Org/calendar.ics"
        org-icalendar-use-deadline '(todo-due event-if-todo event-if-not-todo)
        diary-file (file-truename "~/Apocrypha/Org/diary.org")
        org-priority-get-priority-function #'Tn/org-inherited-priority
        org-icalendar-use-scheduled '(todo-start event-if-todo event-if-not-todo)
        org-agenda-time-grid '((daily today require-timed remove-match)
                               () " ----- " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
        org-agenda-prefix-format '((agenda . " %?-12t% s")
                                   (todo . " %i %-12:c")
                                   (tags . " %i %-12:c")
                                   (search . " %i %-12:c")))



  (add-hook 'org-agenda-mode-hook
            (lambda ()
              (visual-line-mode -1)
              (setq truncate-lines 1)))


  (setq org-agenda-custom-commands
        '(("c" "Super view"
           ((agenda "" ((org-agenda-overriding-header "")
                        (org-super-agenda-groups
                         '((:name "Today"
                                  :time-grid t
                                  :date today
                                  :order 1)))))))
          ("t" "Todo View"
           (
            (todo "" ((org-agenda-overriding-header "")
                      (org-super-agenda-groups
                       '((:name "Inbox"
                                :file-path "inbox"
                                :order 0
                                )
                         (:auto-category t
                                         :order 9)))))))))


  (setq-default org-icalendar-include-todo t)


  )
