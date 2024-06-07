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

(setq-default fill-column 80
              indent-tabs-mode nil
              sentence-end-double-space nil)

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

(dolist (face '(default fixed-pitch))
  (set-face-attribute face nil
                      :font "Iosevka"
                      :weight 'regular
                      :height 180))

(set-face-attribute 'variable-pitch nil
                    :font "FiraGo"
                    :weight 'regular
                    :height 180)

(setq calendar-latitude 39.96
      calendar-longitude -82.99
      calendar-location-name "Columbus,OH"
      user-login-name "xin"
      user-mail-address "xin@ironshark.org")

(dolist (mode '(pdf-view-mode-hook
                term-mode-hook
                org-mode-hook
                shell-mode-hook
                eww-mode-hook
                text-mode-hook
                scad-preview-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;; DO NOT CHANGE ABOVE HERE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
