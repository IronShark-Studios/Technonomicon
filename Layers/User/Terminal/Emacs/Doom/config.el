;; doom.d/config.el
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

(setq confirm-kill-emacs nil)

(map! :i "C-S-v" #'clipboard-yank)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; `doom-font', `doom-variable-pitch-font', `doom-serif-font', `doom-symbol-font',
;; and `doom-big-font'.
(setq doom-font (font-spec :family "iosevka" :size 23))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(use-package! fcitx
  :after evil
  :config
  (setq fcitx-use-dbus nil)
  (setq fcitx-remote-command "fcitx5-remote")
  
  (fcitx-aggressive-setup))

(use-package! aidermacs

  :config
  (setq aidermacs-backend 'vterm)
  (setq aidermacs-default-model "ollama/qwen2.5-coder:14b")
  
  (map! :leader
        :desc "Aidermacs Menu" "o a" #'aidermacs-transient-menu))


 (use-package! minuet
  :demand t
  :config
  (setq minuet-provider 'openai-fim-compatible)
  (setq minuet-n-completions 1)
  
  ;; Use plist-put to safely inject your Ollama settings
  (plist-put minuet-openai-fim-compatible-options :end-point "http://localhost:11434/v1/completions")
  (plist-put minuet-openai-fim-compatible-options :name "Ollama")
  (plist-put minuet-openai-fim-compatible-options :model "qwen2.5-coder:1.5b")
  
  ;; THE FIX: Tell Minuet to look at the $TERM environment variable to bypass the key check
  (plist-put minuet-openai-fim-compatible-options :api-key "TERM") 

  ;; Enable auto-suggestions for all programming modes
  (add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)

  ;; Keybindings for the ghost text
  (map! :map minuet-active-mode-map
        :i "TAB" #'minuet-accept-suggestion
        :i "M-n" #'minuet-next-suggestion
        :i "M-p" #'minuet-previous-suggestion
        :i "M-e" #'minuet-dismiss-suggestion))       :i "M-e" #'minuet-dismiss-suggestion)) ;; Alt+E to reject and clear the ghost text


(defun my/save-buffer-if-file ()
  "Save the current buffer if it's visiting a file and has been modified."
  (when (and (buffer-file-name) (buffer-modified-p))
    (save-buffer)))

(add-hook 'evil-normal-state-entry-hook #'my/save-buffer-if-file)
(add-hook 'evil-insert-state-entry-hook #'my/save-buffer-if-file)



(use-package! bqn-mode
  :mode "\\.bqn$")

(use-package! forth-mode
  :mode "\\.\\(fs\\|fth\\)$")

(add-to-list 'auto-mode-alist '("\\.asm\\'" . asm-mode))

(add-hook 'verilog-mode-hook #'lsp!)
(add-hook 'vhdl-mode-hook #'lsp!)
