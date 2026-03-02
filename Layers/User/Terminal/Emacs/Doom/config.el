;; doom.d/config.el
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; `doom-font', `doom-variable-pitch-font', `doom-serif-font', `doom-symbol-font',
;; and `doom-big-font'.
(setq doom-font (font-spec :family "iosevka" :size 18))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)
