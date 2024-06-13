(when (configuration-layer/package-used-p 'evil)

  (defun Tn/evil-pg-down-and-center ()
    (interactive)
    (evil-next-visual-line 35)
    (evil-scroll-line-to-center nil))

  (defun Tn/evil-pg-up-and-center ()
    (interactive)
    (evil-previous-visual-line 35)
    (evil-scroll-line-to-center nil))

  (defun Tn/evil-center-page ()
    (interactive)
    (evil-scroll-line-to-center nil))

  (defun Tn/avy-jump-and-center ()
    "moves point forward past the next character"
    (interactive)
    (avy-goto-word-or-subword-1)
    (evil-scroll-line-to-center nil))


;;; I prefer to automattically save all open buffers. And the (S-ESC) combination is convient to me due to a custom keyboard layout.

  (defun Tn/save-all-buffers ()
    "Instead of `save-buffer', save all opened buffers by calling `save-some-buffers' with ARG t."
    (interactive)
    (save-some-buffers t))

  (defun Tn/evil-normal-and-save ()
    "switches to evil normal mode, and then saves all buffers"
    (interactive)
    (evil-force-normal-state)
    (Tn/save-all-buffers))

;;; Closing Paren for Eval Statement
  )
