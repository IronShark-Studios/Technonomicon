(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


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


;;; Overrides default colors of Modus-Vivendi.
;;; Colors can be found by placing point on a character, and using
;;; (M-x describe-char). Then finding the hex code and searching that
;;; in (M-x modus-themes-list-colors)


(setq modus-themes-vivendi-color-overrides
      '((bg-main . "#1f1f1f")
        (bg-dim . "#000000")
        (Tn/heading . "#00ced1")
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
        (magenta . "#00fa9a")
        (magenta-alt . "#00fa9a")
        (magenta-alt-other . "#00fa9a")
        (magenta-warmer . "#006400")
        (magenta-cooler . "#556b2f")
        (magenta-faint . "#00c06f")
        (magenta-alt-faint . "#00c06f")
        (magenta-alt-other-faint . "#00c06f")
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

;;;; Heading mappings
        (fg-heading-0 . "#00ced1")
        (fg-heading-1 . "#00ced1")
        (fg-heading-2 . "#00ced1")
        (fg-heading-3 . "#00ced1")
        (fg-heading-4 . "#00ced1")
        (fg-heading-5 . "#00ced1")
        (fg-heading-6 . "#00ced1")
        (fg-heading-7 . "#00ced1")
        (fg-heading-8 . "#00ced1")

;; ;;;; Rainbow mappings
;;         (rainbow-0 . "fg-main")
;;         (rainbow-1 . "magenta-intense")
;;         (rainbow-2 . "cyan-intense")
;;         (rainbow-3 . "blue-intense")
;;         (rainbow-4 . "yellow-intense")
;;         (rainbow-5 . "magenta-cooler")
;;         (rainbow-6 . "cyan-cooler")
;;         (rainbow-7 . "blue-cooler")
;;         (rainbow-8 . "yellow-cooler")

;; ;;;; Code mappings
;;         (builtin . magenta-warmer)
;;         (comment . fg-dim)
;;         (constant . blue-cooler)
;;         (docstring . cyan-faint)
;;         (docmarkup . magenta-faint)
;;         (fnname . magenta)
;;         (keyword . magenta-cooler)
;;         (preprocessor . red-cooler)
;;         (string . blue-warmer)
;;         (type . cyan-cooler)
;;         (variable . cyan)
;;         (rx-construct . green-cooler)
;;         (rx-backslash . magenta)

;; ;;;; Prose mappings
;;         (fg-prose-code . cyan-warmer)
;;         (fg-prose-macro . magenta-cooler)
;;         (fg-prose-verbatim . cyan-warmer)
;;         (prose-table-formula . magenta-warmer)
;;         (prose-tag . magenta-faint)


        ))
