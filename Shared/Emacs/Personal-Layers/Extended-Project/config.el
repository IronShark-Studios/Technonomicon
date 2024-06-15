(when (configuration-layer/package-used-p 'org)

(add-hook 'find-file-hook #'Tn/project-update-tag)
(add-hook 'before-save-hook #'Tn/project-update-tag)

(advice-add 'org-agenda :before #'Tn/agenda-files-update)
(advice-add 'org-todo-list :before #'Tn/agenda-files-update)

)
