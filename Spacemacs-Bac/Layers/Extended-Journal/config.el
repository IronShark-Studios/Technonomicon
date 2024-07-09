(when (configuration-layer/package-used-p 'org)

  (add-hook 'org-capture-mode-hook #'delete-other-windows)

  (setq org-journal-enable-cache t
        org-journal-find-file #'find-file
        org-journal-file-format "%Y-%m-%d.org"
        org-journal-date-format "%Y-%m-%d"
        org-journal-time-format "%H:%M"
        org-journal-start-on-weekday 0
        org-journal-dir (file-truename (format "~/Feronomicon/%s/" (Tn/current-year)))
        org-journal-carryover-items "TODO=\"TODO\"|TODO=\"REVIEW\"|TODO=\"WAITING\"|TODO=\"NEXT\"|TODO=\"HOLD\"|TODO=\"ACTIVE\"|TODO=\"INPROGRESS\"")

  (setq org-roam-dailies-capture-templates
        '(("m" "Memo" entry "*** %?"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Notes")))
          ("f" "Financial" entry "*** %?"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Finances")))
          ("e" "Food Log" table-line "| %<%d - %H:%M> %?"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Food Tracker")))
          ("t" "ToDo" plain "* TODO [#B] %? :REFILE:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List")))
          ("x" "ToDo" plain "* TODO [#B] %?  :REFILE:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("Y" "Food Prep" plain "* TODO [#B] Preparing %?  :FOOD:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("A" "Meal" plain "* TODO [#B] Eating %?  :FOOD:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("B" "Driving" plain "* TODO [#B] Driving to %?  :@CAR:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("C" "Korean Practice" plain "* TODO [#B] Korean Practice %?  :KOREAN:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("D" "Lojban Practice" plain "* TODO [#B] Lojban Practice %?  :LOJBAN:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t)
          ("F" "Sleep" plain "* TODO [#B] End of Day %?  :MISC:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-keep t :immediate-finish t)
          ("W" "Water" plain "* DONE [#B] Refilled Water %?  :MISC:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :immediate-finish t)
          ("G" "Outgoing" plain "* DONE [#B] Out Going Communication  %?  :@OUT-GOING:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-resume t)
          ("E" "Email" plain "* DONE [#B] Incoming Communication %?  :@IN-INCOMING:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-resume t)
          ("X" "Bathroom" plain "* DONE [#B] Bathroom Break %?  :MISC:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-resume t)
          ("G" "General" plain "* DONE [#B] General Break %?  :MISC:"
           :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                  "%[../roam-journal-template.org]"
                                  ("Task-List"))
           :clock-in t :clock-resume t)))

)
