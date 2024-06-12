(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


;;; Overrides default colors of Modus-Vivendi.
;;; Colors can be found by placing point on a character, and using
;;; (M-x describe-char). Then finding the hex code and searching that
;;; in (M-x modus-themes-list-colors)
(setq modus-themes-vivendi-color-overrides
      '((bg-main . "#1f1f1f")
        (magenta-cooler . "#ff5555")
        (magenta-alt-other . "#ff5555")
        (magenta-alt . "#b999ee")
        (magenta . "#058f8f")))

;;; Defalut fonts are set by Spacemacs. These set pitch specific for use
;;; by specific Major Modes. These Currently dont work

;; (set-face-attribute 'fixed-pitch nil
;;                     :font "Iosevka Comfy Wide Motion"
;;                     :weight normal
;;                     :size 18.0)

;; (set-face-attribute 'variable-pitch nil
;;                     :font "Iosevka Comfy Wide Motion Duo"
;;                     :weight normal
;;                     :size 18.0)



;;; Imported all visual setting form org config. Need to integrate them to theme.



;; (add-hook 'org-mode-hook 'Tn/org-font-setup)

;; (defun Tn/org-font-setup ()
;; ;; This is magic code that changes the font of non-heading bullet point lists.
;; (font-lock-add-keywords 'org-mode
;;                         '(("^ *\\([-]\\) "
;;                            (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;; (dolist (face '((org-level-1 . "Azure3")
;;                 (org-level-2 . "Azure3")
;;                 (org-level-3 . "Azure3")
;;                 (org-level-4 . "Azure3")
;;                 (org-level-5 . "Azure3")
;;                 (org-level-6 . "Azure3")
;;                 (org-level-7 . "Azure3")
;;                 (org-level-8 . "Azure3")))
;;   (set-face-attribute (car face) nil :font "Iosevka"
;;                       :weight 'regular :height 1.3
;;                       :foreground (cdr face)))

;; (set-face-attribute 'org-link nil    :foreground "cyan" :inherit 'fixed-pitch)
;; (set-face-attribute 'org-tag nil     :height 0.9 :inherit 'fixed-pitch)
;; (set-face-attribute 'org-block nil    :inherit 'fixed-pitch)
;; (set-face-attribute 'org-table nil    :foreground "dark cyan" :inherit 'fixed-pitch)
;; (set-face-attribute 'org-formula nil  :foreground "dark cyan" :inherit 'fixed-pitch)
;; (set-face-attribute 'org-code nil     :foreground "SpringGreen3"
;;                     :weight 'semi-bold :inherit '(shadow fixed-pitch))
;; (set-face-attribute 'org-verbatim nil :foreground "SpringGreen3"
;;                     :weight 'semi-bold :inherit '(shadow fixed-pitch))
;; (set-face-attribute 'org-table nil    :inherit '(shadow fixed-pitch))
;; (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
;; (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
;; (set-face-attribute 'org-checkbox nil  :inherit 'fixed-pitch)
;; (set-face-attribute 'line-number nil :inherit 'fixed-pitch)
;; (set-face-attribute 'line-number-current-line nil :inherit 'fixed-pitch))

;; (setq org-priority-faces '((?A . (:foreground "medium spring green" :weight 'bold
;;                                               :inherit 'fixed-pitch))
;;                            (?B . (:foreground "deep sky blue" :weight 'bold
;;                                               :inherit 'fixed-pitch))
;;                            (?C . (:foreground "blue violet" :weight 'bold
;;                                               :inherit 'fixed-pitch))
;;                            (?D . (:foreground "dim grey" :weight 'bold
;;                                               :inherit 'fixed-pitch))
;;                            (?E . (:foreground "dark red" :weight 'bold
;;                                               :inherit 'fixed-pitch))))
