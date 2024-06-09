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
;;; by specific Major Modes.

(set-face-attribute 'fixed-pitch nil
                    :font "Iosevka Comfy Wide Motion"
                    :weight normal
                    :size 18.0)

(set-face-attribute 'variable-pitch nil
                    :font "Iosevka Comfy Wide Motion Duo"
                    :weight normal
                    :size 18.0)
