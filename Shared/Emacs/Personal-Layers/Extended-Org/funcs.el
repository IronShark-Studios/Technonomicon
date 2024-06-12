;; ;; (when (configuration-layer/package-used-p 'org)

;; ;;; General visual settings for Org-Mode

;;   (defun Tn/org-mode-setup ()
;;     (org-indent-mode 1)
;;     (variable-pitch-mode 1)
;;     (auto-fill-mode 0)
;;     (visual-line-mode 1))


;; ;;; Last Modified Heading Value

;;   (defun Tn/org-find-time-file-property (property &optional anywhere)
;;     "Return the position of the time file PROPERTY if it exists.
;; When ANYWHERE is non-nil, search beyond the preamble."
;;     (save-excursion
;;       (goto-char (point-min))
;;       (let ((first-heading
;;              (save-excursion
;;                (re-search-forward org-outline-regexp-bol nil t))))
;;         (when (re-search-forward (format "^#\\+%s:" property)
;;                                  (if anywhere nil first-heading)
;;                                  t)
;;           (point)))))

;;   (defun Tn/org-has-time-file-property-p (property &optional anywhere)
;;     "Return the position of time file PROPERTY if it is defined.
;; As a special case, return -1 if the time file PROPERTY exists but
;; is not defined."
;;     (when-let ((pos (Tn/org-find-time-file-property property anywhere)))
;;       (save-excursion
;;         (goto-char pos)
;;         (if (and (looking-at-p " ")
;;                  (progn (forward-char)
;;                         (org-at-timestamp-p 'lax)))
;;             pos
;;           -1))))

;;   (defun Tn/org-set-time-file-property (property &optional anywhere pos)
;;     "Set the time file PROPERTY in the preamble.
;; When ANYWHERE is non-nil, search beyond the preamble.
;; If the position of the file PROPERTY has already been computed,
;; it can be passed in POS."
;;     (when-let ((pos (or pos
;;                         (Tn/org-find-time-file-property property))))
;;       (save-excursion
;;         (goto-char pos)
;;         (if (looking-at-p " ")
;;             (forward-char)
;;           (insert " "))
;;         (delete-region (point) (line-end-position))
;;         (let* ((now (format-time-string "[%Y-%m-%d %a %H:%M]")))
;;           (insert now)))))

;;   (defun Tn/org-set-last-modified ()
;;     "Update the LAST_MODIFIED file property in the preamble."
;;     (when (derived-mode-p 'org-mode)
;;       (Tn/org-set-time-file-property "LAST_MODIFIED")))

;; ;;; Generate Current Year string for file names

;; (defun Tn/current-year () (interactive)
;;   (shell-command-to-string "echo -n $(date +%Y)"))

;; ;;; Frequent Action Hydras

;; ;; (defhydra Tn/org-link-hydra (:color blue
;; ;;                              :hint nil)
;; ;;   "
;; ;;       ^Link Actions^
;; ;; ----------------------------
;; ;; _n_: Insert      _t_: Tangle
;; ;; _y_: Yank        _o_: Open
;; ;;      _f_: FireFox
;; ;; ^ ^
;; ;; ^ ^

;; ;; "
;; ;;   ("n" org-insert-link)
;; ;;   ("y" org-store-link)
;; ;;   ("t" org-babel-tangle)
;; ;;   ("o" org-open-at-point)
;; ;;   ("f" Tn/open-link-firefox)
;; ;;   ("q" nil "Cancel" :color blue))

;; ;; (defun Tn/open-link-firefox ()
;; ;;   "Opens the Org-mode link under point with Firefox."
;; ;;   (interactive)
;; ;;   (let ((link-at-point (org-element-context)))
;; ;;       (browse-url-firefox (org-element-property :raw-link link-at-point))))

;; ;; (defhydra Tn/org-heading-actions-hydra (:color blue
;; ;;                                         :hint nil)
;; ;;   "
;; ;;       ^Heading Actions^
;; ;; -------------------------------
;; ;; _t_: Tags         _s_: Schedual
;; ;; _h_: Todo State   _d_: Deadline
;; ;; _m_: Time stamp; , for inactive
;; ;; ^ ^
;; ;; ^ ^
;; ;; "
;; ;;   ("t" Tn/org-tag-main-hydra/body)
;; ;;   ("h" org-todo)
;; ;;   ("s" org-schedule)
;; ;;   ("d" org-deadline)
;; ;;   ("m" org-time-stamp)
;; ;;   ("q" nil "Cancel" :color blue))











;; )
