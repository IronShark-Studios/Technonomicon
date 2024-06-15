(when (configuration-layer/package-used-p 'org)

  (setq org-clock-history-length 30
        org-clock-in-resume t
        org-clock-out-when-done t
        org-clock-persist t
        org-log-done (quote time)
        org-log-into-drawer t
        org-clock-persist-query-resume nil
        org-clock-auto-clock-resolution (quote when-no-clock-is-running)
        org-clock-out-remove-zero-time-clocks t
        org-clock-report-include-clocking-task t
        org-clock-in-switch-to-state "ACTIVE"
        org-clock-out-switch-to-state "REVIEW"
        org-agenda-persistent-filter t
        org-clock-into-drawer t
        org-agenda-log-mode-items (quote (clock state))
        org-time-stamp-rounding-minutes (quote (1 1)))

  (add-hook 'org-mode-hook (lambda ()
                             (defadvice org-clock-in (after org-clock-in-after activate) (save-buffer))
                             (defadvice org-clock-out (after org-clock-out-after activate) (save-buffer))))

  (add-to-list 'org-modules 'org-habit t)

  (org-clock-persistence-insinuate)

)
