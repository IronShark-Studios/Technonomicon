;;; Global Save
(defun Tn/save-all-buffers ()
  "Instead of `save-buffer', save all opened buffers by calling `save-some-buffers' with ARG t."
  (interactive)
  (save-some-buffers t))

(defun Tn/evil-normal-and-save ()
  "switches to evil normal mode, and saves all buffers"
  (interactive)
  (evil-normal-state)
  (Tn/save-all-buffers))

(global-set-key (kbd "C-x C-s") #'Tn/save-all-buffers)
(define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
(define-key evil-hybrid-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)

;;; System Clipboard
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-x") 'clipboard-kill-region)
(global-set-key (kbd "C-S-v") 'clipboard-yank)

;;; Helm Mode Keybindings
(eval-after-load 'flycheck
  '(define-key flycheck-mode-map (kbd "C-:") 'helm-flyspell-correct))
(eval-after-load 'flyspell
  '(define-key flyspell-mode-map (kbd "C-;") 'helm-flycheck))

;;; Evil Movement
(defun Tn/evil-pg-down-and-center ()
  (interactive)
  (evil-next-visual-line 35)
  (evil-scroll-line-to-center nil))

(defun Tn/evil-pg-up-and-center ()
  (interactive)
  (evil-previous-visual-line 35)
  (evil-scroll-line-to-center nil))

(defun Tn/avy-jump-and-center ()
  "moves point forward past the next character"
  (interactive)
  (avy-goto-word-or-subword-1)
  (evil-scroll-line-to-center nil))

(define-key evil-normal-state-map (kbd "S-n") 'Tn/evil-pg-down-and-center)
(define-key evil-normal-state-map (kbd "S-e") 'Tn/evil-pg-up-and-center)
(define-key evil-normal-state-map (kbd "n") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "e") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "S-i") '(evil-scroll-line-to-center nil))
(define-key evil-normal-state-map (kbd "S-o") 'join-line)
(define-key evil-normal-state-map (kbd "i") 'avy-goto-subword-1)
(define-key evil-normal-state-map (kbd "o") 'harpoon-quick-menu-hydra)
(define-key evil-normal-state-map (kbd "/") 'helm-swoop)
(define-key evil-normal-state-map (kbd "?") 'helm-regexp)
(define-key evil-normal-state-map (kbd "C-h") 'help)
