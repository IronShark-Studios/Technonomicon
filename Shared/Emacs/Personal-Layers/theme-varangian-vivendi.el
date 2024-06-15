(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


;;; Overrides default colors of Modus-Vivendi.
;;; Colors can be found by placing point on a character, and using
;;; (M-x describe-char). Then finding the hex code and searching that
;;; in (M-x modus-themes-list-colors)


(setq modus-themes-vivendi-color-overrides
      '((bg-main . "#1f1f1f")
        (bg-dim . "#000000")
        (red . "#cd0000")
        (red-alt . "#cd0000")
        (red-alt-other . "#cd0000")
        (red-warmer . "#8b0000")
        (red-cooler . "#ff3030")
        (red-faint . "#8b3a3a")
        (red-alt-faint . "#8b3a3a")
        (red-alt-other-faint . "#8b3a3a")
        (red-intense . "#ff0000")
        (green . "#006400")
        (green-alt . "#006400")
        (green-alt-other . "#006400")
        (green-warmer . "#00fa9a")
        (green-cooler . "#00c06f")
        (green-faint . "#556b2f")
        (green-alt-faint . "#556b2f")
        (green-alt-other-faint . "#556b2f")
        (green-intense ."#32cd32")
        (yellow . "#7cfc00")
        (yellow-alt . "#7cfc00")
        (yellow-alt-other . "#7cfc00")
        (yellow-warmer ."#adff2f")
        (yellow-cooler . "#9aff9a")
        (yellow-faint . "#88ca9f")
        (yellow-alt-faint . "#88ca9f")
        (yellow-alt-other-faint . "#88ca9f")
        (yellow-intense . "#54ff9f")
        (blue . "#2fafff")
        (blue-alt . "#2fafff")
        (blue-alt-other . "#2fafff")
        (blue-warmer . "#79a8ff")
        (blue-cooler . "#4769e1")
        (blue-faint . "#191970")
        (blue-alt-faint . "#191970")
        (blue-alt-other-faint . "#191970")
        (blue-intense . "#1e90ff")
        (magenta . "#c6e2ff")
        (magenta-alt . "#c6e2ff")
        (magenta-alt-other . "#c6e2ff")
        (magenta-warmer . "#87ceff")
        (magenta-cooler . "#b0e2ff")
        (magenta-faint . "#c6e2ff")
        (magenta-alt-faint . "#c6e2ff")
        (magenta-alt-other-faint . "#c6e2ff")
        (magenta-intense . "#63b8ff")
        (cyan . "#00d3d0")
        (cyan-alt . "#00d3d0")
        (cyan-alt-other . "#00d3d0")
        (cyan-warmer . "#4ae2f0")
        (cyan-cooler . "#6ae4b9")
        (cyan-faint . "#9ac8e0")
        (cyan-alt-faint . "#9ac8e0")
        (cyan-alt-other-faint . "#9ac8e0")
        (cyan-intense . "#00eff0")










      ))






































;;; Imported all visual setting form org config. Need to integrate them to theme.




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



(custom-set-faces
 '(org-block-begin-line
   ((t (:underline "#000000" :foreground "#000000" :background "#2F4F4F" :extend t))))
 '(org-block
   ((t (:background "#2F4F4F" :extend t))))
 '(org-block-end-line
   ((t (:overline "#000000" :foreground "#000000" :background "#2F4F4F" :extend t))))
 )
