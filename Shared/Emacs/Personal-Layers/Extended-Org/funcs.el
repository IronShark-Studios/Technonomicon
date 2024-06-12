(when (configuration-layer/package-used-p 'org)

  (defun Tn/org-mode-setup ()
    (org-indent-mode 1)
    (variable-pitch-mode 1)
    (auto-fill-mode 0)
    (visual-line-mode 1))


)
