;;; General Org-Mode

(setq alert-default-style 'notifications
      org-export-backends '(ascii html icalendar latex md odt)
      org-superstar-headline-bullets-list '("◉" "○" "●" "○" "●" "○" "●")


      )

(add-hook 'org-mode-hook 'Tn/org-mode-setup)
(add-hook 'before-save-hook 'Tn/org-set-last-modified)
(add-hook 'org-capture-mode-hook 'evil-hybrid-state)
(add-hook 'org-log-buffer-setup-hook 'evil-hybrid-state)

(advice-add 'org-ctrl-c-ctrl-c  :after #'save-buffer)
(advice-add 'org-deadline       :after #'save-buffer)
(advice-add 'org-schedule       :after #'save-buffer)
(advice-add 'org-store-log-note :after #'save-buffer)
(advice-add 'org-store-log-note :after #'org-cycle)

;;; Org-Appear

(setq org-appear-trigger 'manual
      org-pretty-entities t
      org-appear-autoentities t
      org-appear-autokeywords t
      org-appear-inside-latex t)

  (add-hook 'org-mode-hook (lambda ()
                             (add-hook 'evil-hybrid-state-entry-hook
                                       #'org-appear-manual-start
                                       nil
                                       t)
                             (add-hook 'evil-hybrid-state-exit-hook
                                       #'org-appear-manual-stop
                                       nil
                                       t)))
