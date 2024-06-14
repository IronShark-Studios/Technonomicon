(when (configuration-layer/package-used-p 'org)


  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t
        org-roam-ui-browser-function #'browse-url-firefox
        org-roam-completion-everywhere t
        org-roam-directory (file-truename "~/Grimoire/")
        org-roam-dailies-directory (file-truename "~/Feronomicon/")
        org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))


  (setq org-roam-capture-templates
        '(("n" "Node" plain "%?"
           :target (file+head "Node/${slug}-%<%Y%m%d%H%M%S>.org"
                              "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Node:SFW:")
           :unnarrowed t :empty-lines-before 1)

          ("s" "Source" plain "%?"
         :target (file+head "%(expand-file-name (or citar-org-roam-subdir \"\") org-roam-directory)/${citar-citekey}.org"
          "#+title: ${citar-citekey} ${note-title}\n#+category: ${note-title}\n#+LAST_MODIFIED: \n#+filetags: :Source:SFW:")
         :unnarrowed t :empty-lines-before 1)

         ("e" "Internal" plain "%?"
         :target (file+head "Personal/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Internal:NSFW:")
         :unnarrowed t :empty-lines-before 1)

         ("e" "Internal" plain "%?"
         :target (file+head "Recipes/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Recipes:NSFW:")
         :unnarrowed t :empty-lines-before 1)

        ("t" "Topic" plain "%?"
         :target (file+head "Topic/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Topic:SFW: \n\n")
         :unnarrowed t :empty-lines-before 1)))


  (add-to-list 'display-buffer-alist
               '("\\*org-roam\\*"
                 (display-buffer-in-direction)
               (direction . right)
               (window-width . 0.33)
               (window-height . fit-window-to-buffer)))

  (org-roam-db-autosync-mode)
  (org-roam-bibtex-mode +1)
;;; Closing Paren for Eval
)
