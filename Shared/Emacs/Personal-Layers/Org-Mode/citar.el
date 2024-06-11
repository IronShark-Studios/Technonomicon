(use-package citar-org-roam
  :after (citar org-roam)
  :config (citar-org-roam-mode))

(setq citar-org-roam-subdir (file-truename "~/Grimoire/Reference/")
      citar-org-roam-capture-template-key "s")
