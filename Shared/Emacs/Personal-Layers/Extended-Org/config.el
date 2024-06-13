(when (configuration-layer/package-used-p 'org)
;;; General Org-Mode Variables

(setq alert-default-style 'notifications
      org-export-backends '(ascii html icalendar latex md odt)
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
