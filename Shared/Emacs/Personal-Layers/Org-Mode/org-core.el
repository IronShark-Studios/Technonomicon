(defun Tn/org-visual-setup ()
    (interactive)

    (setq visual-fill-column-width 100
          visual-fill-column-center-text t)
    (visual-fill-column-mode 1)
    (org-indent-mode 1)
    (variable-pitch-mode 1)
    (auto-fill-mode 0)
    (visual-line-mode 1))

(add-hook 'org-mode-hook 'Tn/org-visual-setup)



(defun Tn/org-find-time-file-property (property &optional anywhere)
  "Return the position of the time file PROPERTY if it exists.
When ANYWHERE is non-nil, search beyond the preamble."
  (save-excursion
    (goto-char (point-min))
    (let ((first-heading
           (save-excursion
             (re-search-forward org-outline-regexp-bol nil t))))
      (when (re-search-forward (format "^#\\+%s:" property)
                               (if anywhere nil first-heading)
                               t)
        (point)))))

(defun Tn/org-has-time-file-property-p (property &optional anywhere)
  "Return the position of time file PROPERTY if it is defined.
As a special case, return -1 if the time file PROPERTY exists but
is not defined."
  (when-let ((pos (Tn/org-find-time-file-property property anywhere)))
    (save-excursion
      (goto-char pos)
      (if (and (looking-at-p " ")
               (progn (forward-char)
                      (org-at-timestamp-p 'lax)))
          pos
        -1))))

(defun Tn/org-set-time-file-property (property &optional anywhere pos)
  "Set the time file PROPERTY in the preamble.
When ANYWHERE is non-nil, search beyond the preamble.
If the position of the file PROPERTY has already been computed,
it can be passed in POS."
  (when-let ((pos (or pos
                      (Tn/org-find-time-file-property property))))
    (save-excursion
      (goto-char pos)
      (if (looking-at-p " ")
          (forward-char)
        (insert " "))
      (delete-region (point) (line-end-position))
      (let* ((now (format-time-string "[%Y-%m-%d %a %H:%M]")))
        (insert now)))))

(defun Tn/org-set-last-modified ()
  "Update the LAST_MODIFIED file property in the preamble."
  (when (derived-mode-p 'org-mode)
    (Tn/org-set-time-file-property "LAST_MODIFIED")))


  (add-hook 'before-save 'Tn/org-set-last-modified)

(defun Tn/current-year () (interactive)
  (shell-command-to-string "echo -n $(date +%Y)"))


  (setq org-priority-faces '((?A . (:foreground "medium spring green" :weight 'bold
                                                :inherit 'fixed-pitch))
                             (?B . (:foreground "deep sky blue" :weight 'bold
                                                :inherit 'fixed-pitch))
                             (?C . (:foreground "blue violet" :weight 'bold
                                                :inherit 'fixed-pitch))
                             (?D . (:foreground "dim grey" :weight 'bold
                                                :inherit 'fixed-pitch))
                             (?E . (:foreground "dark red" :weight 'bold
                                                :inherit 'fixed-pitch))))


  (setq org-appear-trigger 'manual
        org-appear-autoemphasis t
        org-appear-autolinks t
        org-link-descriptive t
        org-pretty-entities t
        org-appear-autoentities t
        org-appear-autosubmarkers t
        org-appear-autokeywords t
        org-appear-inside-latex t
        org-superstar-headline-bullets-list '("◉" "○" "●" "○" "●" "○" "●")
        org-export-backends '(ascii html icalendar latex md odt)
        org-ellipsis " ▾"
        org-highest-priority ?A
        org-default-priority ?B
        org-lowest-priority ?D
        org-habit-graph-column 100
        org-hide-emphasis-markers t
        org-src-fontify-natively t
        org-fontify-quote-and-verse-blocks t
        org-fontify-done-headline t
        org-src-tab-acts-natively t
        org-hide-block-startup nil
        org-src-preserve-indentation nil
        org-startup-folded t
        org-image-actual-width 600
        org-treat-S-cursor-todo-selection-as-state-change nil
        org-startup-with-inline-images t
        org-cycle-separator-lines 2
        org-confirm-babel-evaluate nil
        org-capture-bookmark nil
        evil-auto-indent nil
        org-src-preserve-indentation nil
        org-export-with-todo-keywords nil
        org-edit-src-content-indentation 0
        org-return-follows-link t
        org-refile-targets '((org-agenda-files :maxlevel . 10))
        org-refile-use-outline-path 'file
        org-outline-path-complete-in-steps nil
        org-refile-allow-creating-parent-nodes 'confirm
        browse-url-browser-function 'eww-browse-url
        org-enforce-todo-dependencies t
        org-enforce-todo-checkbox-dependencies t
        alert-default-style 'notifications
        org-odd-levels-only t
        org-fold-catch-invisible-edits 'show-and-error
        org-directory "~/Apocrypha/Org/"
        org-archive-location (format "~/Ferronomicon/\%s/\%s-archvie.org::datetree/" (Tn/current-year) (Tn/current-year)))


(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "INPROGRESS(i!/!)" "ACTIVE(a!/!)"
                        "|" "DONE(d!/!)")
              (sequence "GOAL(g@/!)" "WAITING(w@/!)" "HOLD(h@/!)"
                         "REVIEW" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "deep sky blue" :weight bold)
              ("NEXT" :foreground "medium spring green" :weight bold)
              ("ACTIVE" :foreground "cyan" :weight bold)
              ("DONE" :foreground "dim gray" :weight bold)
              ("WAITING" :foreground "blue violet" :weight bold)
              ("REVIEW" :foreground "blue violet" :weight bold)
              ("HOLD" :foreground "dark red" :weight bold)
              ("CANCELLED" :foreground "dim gray" :weight bold))))


  (add-hook 'org-capture-mode-hook 'evil-hybrid-state)
  (add-hook 'org-log-buffer-setup-hook 'evil-hybrid-state)
  (add-hook 'org-mode-hook (lambda ()
                             (add-hook 'evil-hybrid-state-entry-hook
                                       #'org-appear-manual-start
                                       nil
                                       t)
                             (add-hook 'evil-hybrid-state-exit-hook
                                       #'org-appear-manual-stop
                                       nil
                                       t)))


  (advice-add 'org-ctrl-c-ctrl-c  :after #'save-buffer)
  (advice-add 'org-deadline       :after #'save-buffer)
  (advice-add 'org-schedule       :after #'save-buffer)
  (advice-add 'org-store-log-note :after #'save-buffer)
  (advice-add 'org-store-log-note :after #'org-cycle)
