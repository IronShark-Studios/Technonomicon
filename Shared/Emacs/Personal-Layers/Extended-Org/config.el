(when (configuration-layer/package-used-p 'org)
;;; General Org-Mode Variables

(setq alert-default-style 'notifications
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
      org-enforce-todo-checkbox-dependencies t
      org-odd-levels-only t
      org-fold-catch-invisible-edits 'show-and-error
      org-directory "~/Apocrypha/Org/"
      org-archive-location (format "~/Ferronomicon/\%s/\%s-archvie.org::datetree/" (Tn/current-year) (Tn/current-year))
      org-superstar-headline-bullets-list '("◉" "○" "●" "○" "●" "○" "●")
      )


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


;;; Org-Bable
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (lisp . t)
   (gnuplot . t)
   (latex . t)
   (scheme . t)))

(push '("conf-unix" . conf-unix) org-src-lang-modes)


;;; Org-Appear

(setq org-appear-trigger 'manual
      org-pretty-entities t
      org-appear-autoentities t
      org-appear-autokeywords t
      org-appear-inside-latex t
      org-appear-autoemphasis t
      org-appear-autolinks t
      org-link-descriptive t
      org-appear-autosubmarkers t)

(add-hook 'org-mode-hook (lambda ()
                           (add-hook 'evil-hybrid-state-entry-hook
                                     #'org-appear-manual-start
                                     nil
                                     t)
                           (add-hook 'evil-hybrid-state-exit-hook
                                     #'org-appear-manual-stop
                                     nil
                                     t)))


;; ;;; Org Related Keybindings, Hooks, and Advice
 (global-set-key (kbd "C-c l") 'spacemacs/Tn/org-link-transient-state/body)
 (global-set-key (kbd "C-c h") 'spacemacs/Tn/org-headings-transient-state/body)


(add-hook 'org-mode-hook 'Tn/org-mode-setup)
(add-hook 'before-save-hook 'Tn/org-set-last-modified)
(add-hook 'org-capture-mode-hook 'evil-hybrid-state)
(add-hook 'org-log-buffer-setup-hook 'evil-hybrid-state)


(advice-add 'org-ctrl-c-ctrl-c  :after #'save-buffer)
(advice-add 'org-deadline       :after #'save-buffer)
(advice-add 'org-schedule       :after #'save-buffer)
(advice-add 'org-store-log-note :after #'save-buffer)
(advice-add 'org-store-log-note :after #'org-cycle)



;;; Closing Paren for Eval
)
