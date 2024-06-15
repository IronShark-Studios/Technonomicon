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
        (green . "#836fff")
        (green-alt . "#836fff")
        (green-alt-other . "#836fff")
        (green-warmer . "#ab82ff")
        (green-cooler . "#7d26cd")
        (green-faint . "#bf3eff")
        (green-alt-faint . "#bf3eff")
        (green-alt-other-faint . "#bf3eff")
        (green-intense . "#9b30ff")
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
        (magenta . "#006400")
        (magenta-alt . "#006400")
        (magenta-alt-other . "#006400")
        (magenta-warmer . "#00fa9a")
        (magenta-cooler . "#00c06f")
        (magenta-faint . "#556b2f")
        (magenta-alt-faint . "#556b2f")
        (magenta-alt-other-faint . "#556b2f")
        (magenta-intense . "#32cd32")
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

;; rainbow paren, and matching colors

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
   ((t (:underline "#000000" :foreground "#000000" :background "#696969" :extend t))))
 '(org-block
   ((t (:background "#2e2e2e" :extend t))))
 '(org-block-end-line
   ((t (:overline "#000000" :foreground "#000000" :background "#696969" :extend t))))
 )

(defun Tn/toggle-mode-line ()
  (setq mode-line-format nil))

(add-hook 'term-mode-hook 'Tn/toggle-mode-line)
