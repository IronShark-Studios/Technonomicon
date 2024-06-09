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

;;; I am also binding the clipboard functions here. As this seems to be where they would have the most overlap.
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-x") 'clipboard-kill-region)
(global-set-key (kbd "C-S-v") 'clipboard-yank)
