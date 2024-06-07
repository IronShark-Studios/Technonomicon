(winner-mode +1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode t)
(set-fringe-mode 3)
(scroll-bar-mode -1)
(global-hl-line-mode 1)
(global-auto-revert-mode 1)
(global-visual-line-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode t)

(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

(setq visible-bell t
      use-dialog-box nil
      column-number-mode t
      vc-follow-symlinks t
      inhibit-splash-screen t
      ring-bell-function 'ignore
      use-package-always-ensure t
      use-package-always-defer t
      package-enable-at-startup nil
      warning-minimum-level ":error"
      display-line-numbers 'relative
      visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

(setq-default fill-column 80
              indent-tabs-mode nil
              sentence-end-double-space nil)

(dolist (face '(default fixed-pitch))
  (set-face-attribute face nil
                      :font "Iosevka"
                      :weight 'regular
                      :height 180))

(set-face-attribute 'variable-pitch nil
                    :font "FiraGo"
                    :weight 'regular
                    :height 180)
