(when (configuration-layer/package-used-p 'org)


(defun Tn/Node-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Node" tags)
             (member "SFW" tags))))

(defun Tn/Node-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Node" tags)))

(defun Tn/Node-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Node-filter-nsfw))

(defun Tn/Node-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Node-filter))

(defun Tn/Node-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Node-filter))

(defun Tn/Node-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Node-filter-nsfw))

(defun Tn/Node-capture ()
  (interactive)
  (org-roam-capture nil "n" :filter-fn 'Tn/Node-filter))

(defun Tn/Node-capture-all ()
  (interactive)
  (org-roam-capture nil "n" :filter-fn 'Tn/Node-filter-nsfw))

(defun Tn/Internal-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Internal" tags)))

(defun Tn/Internal-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Internal-filter))

(defun Tn/Internal-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Internal-filter))

(defun Tn/Internal-capture ()
  (interactive)
  (org-roam-capture nil "e" :filter-fn 'Tn/Internal-filter))

(defun Tn/Source-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Source" tags)
             (member "SFW" tags))))

(defun Tn/Source-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Source" tags)))

(defun Tn/Source-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Source-filter-nsfw))

(defun Tn/Source-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Source-filter))

(defun Tn/Source-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Source-filter))

(defun Tn/Source-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Source-filter-nsfw))

(defun Tn/Topic-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Topic" tags)
             (member "SFW" tags))))

(defun Tn/Topic-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Topic" tags)))

(defun Tn/Topic-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Topic-filter-nsfw))

(defun Tn/Topic-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Topic-filter))

(defun Tn/Topic-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Topic-filter))

(defun Tn/Topic-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Topic-filter-nsfw))

(defun Tn/Topic-capture ()
  (interactive)
  (org-roam-capture nil "t" :filter-fn 'Tn/Topic-filter))

(defun Tn/delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (if (y-or-n-p (concat "Do you really want to delete file " filename " ?"))
            (progn
              (delete-file filename)
              (message "Deleted file %s." filename)
              (kill-buffer)))
      (message "Not a file visiting buffer!"))))

(defun Tn/eww-wikipedia-search ()
  "Searches Wikipedia for the given search term and opens the result in EWW."
  (interactive)
    (eww (format "https://en.wikipedia.org/wiki/Special:Search?search=%s" (read-from-minibuffer "Search For: " ""))))


(spacemacs|define-transient-state Tn/roam-insert
  :title "Roam Insert"
  :foreign-keys run
  :doc "
         File Types
  --------------------------
  _n_: Node    _e_: Internal
  _t_: Topic   _s_: Source
       _b_: Citation
       _w_: Web Link"
  :bindings
  ("n" Tn/Node-insert)
  ("N" Tn/Node-insert-all)
  ("e" Tn/Internal-insert)
  ("t" Tn/Topic-insert)
  ("T" Tn/Topic-insert-all)
  ("s" Tn/Source-insert)
  ("S" Tn/Source-insert-all)
  ("b" citar-insert-citation)
  ("w" Tn/eww-wikipedia-search)
  ("r" spacemacs/Tn/roam-main-transient-state/body "Return" :color blue )
  ("q" nil :exit t))

(spacemacs|define-transient-state Tn/roam-find
  :title "Roam Find"
  :foreign-keys run
  :doc "
        File Types
  --------------------------
  _n_: Node    _e_: Internal
  _t_: Topic   _s_: Source"
  :bindings
  ("n" Tn/Node-find)
  ("N" Tn/Node-find-all)
  ("e" Tn/Internal-find)
  ("t" Tn/Topic-find)
  ("T" Tn/Topic-find-all)
  ("s" Tn/Source-find)
  ("S" Tn/Source-find-all)
  ("r" spacemacs/Tn/roam-main-transient-state/body "Return" :color blue )
  ("q" nil :exit t))

(spacemacs|define-transient-state Tn/roam-capture
  :title "Roam Capture"
  :foreign-keys run
  :doc "
         File Types
  --------------------------
  _n_: Node    _e_: Internal
  _t_: Topic   _s_: Source"
  :bindings
  ("q" nil :exit t)
  ("n" Tn/Node-capture)
  ("e" Tn/Internal-capture)
  ("t" Tn/Topic-capture)
  ("s" citar-open-notes)
  ("r" spacemacs/Tn/roam-main-transient-state/body "Return" :color blue ))

(spacemacs|define-transient-state Tn/roam-actions
  :title "Roam Actions"
  :foreign-keys run
  :doc "
             File Actions
  ------------------------------------
  _t_: Add Tag      _T_: Remove Tag
  _a_: Add Alias    _A_: Remove Alias
  _l_: Add RefKey   _L_: Remove RefKey"
  :bindings
  ("t" org-roam-tag-add)
  ("T" org-roam-tag-remove)
  ("a" org-roam-alias-add)
  ("A" org-roam-alias-remove)
  ("l" citar-org-roam-ref-add)
  ("L" org-roam-ref-remove)
  ("r" spacemacs/Tn/roam-main-transient-state/body "Return" :color blue )
  ("q" nil :exit t))

(spacemacs|define-transient-state Tn/roam-main
  :title "Roam Main Menu"
  :foreign-keys run
  :doc "
   File Groups     All Files          Actions
  --------------------------------------------------
  _n_: Insert     _N_: Insert      _b_: Roam Buffer
  _f_: Find       _F_: Find        _g_: Roam Graph
  _c_: Capture    _C_: Capture     _d_: Delete File
     _o_: Open Bibtex File  _u_: Update Database
            _h_: Heading Actions"
  :bindings
  ("b" org-roam-buffer-toggle)
  ("o" Tn/open-bibliography)
  ("u" org-roam-db-sync)
  ("g" org-roam-ui-mode)
  ("G" org-roam-graph)
  ("N" org-roam-node-insert)
  ("C" org-roam-capture)
  ("F" org-roam-node-find)
  ("h" spacemacs/Tn/roam-actions-transient-state/body)
  ("n" spacemacs/Tn/roam-insert-transient-state/body)
  ("c" spacemacs/Tn/roam-capture-transient-state/body)
  ("f" spacemacs/Tn/roam-find-transient-state/body)
  ("d" Tn/delete-file-and-buffer)
  ("q" nil :exit t))

;;; Closing Paren for eval statement
)
