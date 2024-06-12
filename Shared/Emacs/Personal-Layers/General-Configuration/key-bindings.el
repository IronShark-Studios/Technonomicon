;;; I prefer to automattically save all open buffers. And the (S-ESC) combination is convient to me due to a custom keyboard layout.

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

;;; Allow me to use the System Clipboard
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-x") 'clipboard-kill-region)
(global-set-key (kbd "C-S-v") 'clipboard-yank)

;;; Improved Evil Movement
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
