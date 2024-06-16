(when (configuration-layer/package-used-p 'helm)

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

  (spacemacs|define-transient-state Tn/journal
    :title "Journal"
    :foreign-keys run
    :doc "
        Today                   Tomorrow
    -------------------------------------------
    _n_: Capture         _N_: Capture Tomorrow
    _t_: Open            _T_: Open Tomorrow
    _a_: Agenda          _A_: Weekly Agenda
    _g_: Global TODO     _s_: Future Schedual
    _f_: Shopping Log   _m_: Nutrition Log"
    :bindings
    ("n" spacemacs/Tn/journal-capture-transient-state/body)
    ("t" Tn/org-journal-setup)
    ("a" Tn/org-agenda-day)
    ("N" org-roam-dailies-capture-tomorrow)
    ("T" (org-roam-dailies-goto-tomorrow 1 "m"))
    ("A" Tn/org-agenda-week)
    ("g" Tn/org-agenda-todos)
    ("s" Tn/org-agenda-date-overview)
    ("m" Tn/open-nutrition-log)
    ("f" Tn/open-shopping-log)
    ("q" nil :exit t))

  (spacemacs|define-transient-state Tn/journal-capture
  :title "Journal Capture"
  :foreign-keys run
  :doc "
              Capture
  --------------------------------------
       _n_: ToDo and ClockIn
    _f_: Food         _m_: Memo
    _t_: ToDo         _e_: Financial"
  :bindings
  ("f" Tn/easy-food-capture)
  ("m" Tn/easy-memo-capture)
  ("e" Tn/easy-financial-capture)
  ("n" Tn/easy-todo-capture-and-clock-in)
  ("t" Tn/easy-todo-capture)
  ("q" nil :exit t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The code below this point is fragile. It uses tags to automatically  ;;;;
;;; adds and removes org journal files from the agenda file list to      ;;;;
;;; prevent large file numbers from slowing it down.                     ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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


)
