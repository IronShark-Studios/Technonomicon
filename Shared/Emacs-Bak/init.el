











;;; ^^To Be Sorted
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


























;;; Create Org-ex-tags layer



























(use-package org-journal
  :bind
  (("C-c t" . Tn/org-journal-hydra/body)
   ("s-<return>" . Tn/new-todo-with-priority))
  :hook
  ((org-capture-mode-hook . delete-other-windows)))

(setq org-journal-dir (file-truename (format "~/Feronomicon/%s/" (Tn/current-year)))
      org-journal-enable-cache t
      org-journal-find-file #'find-file
      org-journal-file-format "%Y-%m-%d.org"
      org-journal-date-format "%Y-%m-%d"
      org-journal-time-format "%H:%M"
      org-journal-start-on-weekday 0
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

(defun Tn/open-nutrition-log ()
  (interactive)
  (find-file (file-truename (format "~/Feronomicon/%s/nutrition.journal" (Tn/current-year)))))

(defun Tn/open-shopping-log ()
  (interactive)
  (find-file (file-truename
              "~/Grimoire/Topic/grocery_shopping_list-20240115171307.org")))

(defun Tn/easy-food-capture ()
(interactive)
(find-file (file-truename "~/Grimoire/Personal/food_macro_quick_refrence-20240214162123.org"))
(org-roam-dailies-capture-today nil "e")
(windmove-left))

(defun Tn/easy-memo-capture ()
(interactive)
(org-roam-dailies-capture-today nil "m"))

(defun Tn/easy-financial-capture ()
(interactive)
(org-roam-dailies-capture-today nil "f"))

(defun Tn/easy-todo-capture ()
(interactive)
(org-roam-dailies-capture-today nil "t"))

(defun Tn/easy-todo-capture-and-clock-in ()
(interactive)
(org-roam-dailies-capture-today nil "x"))

(defun Tn/quick-todo-future ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-capture-date 1 nil "t"))

(defun Tn/quick-open-future ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-goto-date 1 "t"))

(defun Tn/quick-todo-tomorrow ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-capture-tomorrow 1 nil "t"))

(defun Tn/quick-open-tomorrow ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-goto-tomorrow 1 "t"))

(defun Tn/org-journal-setup ()
  "Creates journal file for current day, enters journal mode, and inserts previous unfinished ToDo items."
  (interactive)
  (org-roam-dailies-goto-today "t")
  (org-journal--carryover)
  (org-cycle-global)
  (save-buffer))

(defcustom Tn/org-journal-enable-agenda-integration t
  "Add current and future org-journal files to `org-agenda-files' when non-nil."
  :type 'boolean)

(defvar Tn/org-journal-file-list nil "list of current and future org-journal files")

(defun Tn/set-org-journal-file-list (list)
       (setq Tn/org-journal-file-list list))

(defun Tn/org-journal--update-org-agenda-files ()
  "Adds the current and future journal files to `org-agenda-files'
containing TODOs, and cleans out past org-journal files."
  (when Tn/org-journal-enable-agenda-integration
    (let ((not-org-journal-agenda-files
           (seq-filter
            (lambda (fname)
              (not (string-match (org-journal--dir-and-file-format->pattern) fname)))
            (org-agenda-files)))
          (org-journal-agenda-files
           (let* ((future (org-journal--read-period 'future))
                  (beg (car future))
                  (end (cdr future)))
             (setcar (cdr beg) (1- (cadr beg))) ;; Include today; required for `org-journal--search-build-file-list'
             (when (< (nth 2 (decode-time (current-time))) org-extend-today-until)
               (setq beg (decode-time (apply #'encode-time `(0 59 -1 ,(nth 1 beg) ,(nth 0 beg) ,(nth 2 beg))))
                     beg (list (nth 4 beg) (nth 3 beg) (nth 5 beg))))
             (org-journal--search-build-file-list
              (org-journal--calendar-date->time beg)
              (org-journal--calendar-date->time end)))))
      (Tn/set-org-journal-file-list org-journal-agenda-files))))

(defun Tn/agenda-files-update (&rest _)
  "Update the value of `org-agenda-files'."
  (Tn/org-journal--update-org-agenda-files)
  (setq org-agenda-files (delete-dups (append (Tn/project-files) (symbol-value 'Tn/org-journal-file-list) (directory-files-recursively "~/Projects/" "^.*-todo.org$")))))






(defhydra Tn/org-journal-hydra (:color blue
                                :hint nil)
  "
^Today^                 ^Tomorrow^
-------------------------------------------
_n_: Capture         _N_: Capture Tomorrow
_t_: Open            _T_: Open Tomorrow
_a_: Agenda          _A_: Weekly Agenda
_g_: Global TODO     _s_: Future Schedual
_f_: Shopping Log   _m_: Nutrition Log
"
  ("n" Tn/org-journal-capture-hydra/body)
  ("t" Tn/org-journal-setup)
  ("a" Tn/org-agenda-day)
  ("N" org-roam-dailies-capture-tomorrow)
  ("T" (org-roam-dailies-goto-tomorrow 1 "m"))
  ("A" Tn/org-agenda-week)
  ("g" Tn/org-agenda-todos)
  ("s" Tn/org-agenda-date-overview)
  ("m" Tn/open-nutrition-log)
  ("f" Tn/open-shopping-log)
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-journal-capture-hydra (:color blue
                                        :hint nil)
  "
          ^Capture^
-------------------------------------------
    _n_: ToDo and ClockIn
_f_: Food         _m_: Memo
_t_: ToDo         _e_: Financial
"
  ("f" Tn/easy-food-capture)
  ("m" Tn/easy-memo-capture)
  ("e" Tn/easy-financial-capture)
  ("n" Tn/easy-todo-capture-and-clock-in)
  ("t" Tn/easy-todo-capture)
  ("q" nil "Cancel" :color blue))


















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
