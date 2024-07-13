;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")
;;
(load "~/.config/doom/secrets.el")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:

(prefer-coding-system 'utf-8)
 (when (display-graphic-p)
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

(setq doom-font (font-spec :family "Iosevka Comfy Wide Motion" :size 18)
      doom-variable-pitch-font (font-spec :family "Iosevka Comfy Wide Motion Duo" :size 18)
      )

;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'modus-vivendi
      modus-themes-paren-match '(bold intense)
      modus-themes-bold-constructs t
      modus-themes-org-blocks 'tinted-background
      modus-themes-vivendi-color-overrides
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
        (cyan-intense . "#00eff0")))

(setq modus-themes-headings
      (quote ((t . (monochrome)))))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq vc-follow-symlinks t
;;       ibuffer-expert t
      )

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
