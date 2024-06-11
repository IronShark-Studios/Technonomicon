(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


(set-face-attribute 'variable-pitch nil
                    :font "Iosevka Comfy Motion Duo"
                    :weight 'regular
                    :height 180)


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
