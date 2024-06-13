;;; General Org-Mode

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


;;; Org Related Keybindings, Hooks, and Advice
;; (define-key org-mode-map (kbd "C-c l") 'Tn/org-link-hydra/body)
;; (define-key org-mode-map (kbd "C-c h") 'Tn/org-heading-actions-hydra/body)


(add-hook 'org-mode-hook 'Tn/org-mode-setup)
(add-hook 'before-save-hook 'Tn/org-set-last-modified)
(add-hook 'org-capture-mode-hook 'evil-hybrid-state)
(add-hook 'org-log-buffer-setup-hook 'evil-hybrid-state)


(advice-add 'org-ctrl-c-ctrl-c  :after #'save-buffer)
(advice-add 'org-deadline       :after #'save-buffer)
(advice-add 'org-schedule       :after #'save-buffer)
(advice-add 'org-store-log-note :after #'save-buffer)
(advice-add 'org-store-log-note :after #'org-cycle)


;;; Frequent Action Hydras

(defhydra Tn/org-link-hydra (:color blue
                                    :hint nil)
  "
      ^Link Actions^
----------------------------
_n_: Insert      _t_: Tangle
_y_: Yank        _o_: Open
     _f_: FireFox
^ ^
^ ^

"
  ("n" org-insert-link)
  ("y" org-store-link)
  ("t" org-babel-tangle)
  ("o" org-open-at-point)
  ("f" Tn/open-link-firefox)
  ("q" nil "Cancel" :color blue))


(defhydra Tn/org-heading-actions-hydra (:color blue
                                        :hint nil)
  "
      ^Heading Actions^
-------------------------------
_t_: Tags         _s_: Schedual
_h_: Todo State   _d_: Deadline
_m_: Time stamp; , for inactive
^ ^
^ ^
"
  ("t" Tn/org-tag-main-hydra/body)
  ("h" org-todo)
  ("s" org-schedule)
  ("d" org-deadline)
  ("m" org-time-stamp)
  ("q" nil "Cancel" :color blue))
