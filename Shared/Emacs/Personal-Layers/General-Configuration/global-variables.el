;;; Variables not tied to a specific package or that I otherwise want to be available globally.

(setq vc-follow-symlinks t
      warning-minimum-level ":error"
      evil-want-fine-undo t
      evil-respect-visual-line-mode t
      ibuffer-expert t
      ibuffer-formats
      '((mark modified read-only " "
              (name 40 40 :left :elide) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 9 9 :left :elide)
              " " filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))
