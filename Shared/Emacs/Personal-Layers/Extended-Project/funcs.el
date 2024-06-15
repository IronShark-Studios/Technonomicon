(when (configuration-layer/package-used-p 'org)

  (spacemacs|define-transient-state Tn/tag-main-menu
    :title "Tag Main Menu"
    :foreign-keys run
    :doc "
    ^Tag Type^
    -----------------------------------------------
    _m_: Misc              _f_: Food


    _p_: People            _l_: Location
    _a_: Academic          _c_: Content
    _f_: Physical Project  _d_: Digital Project
            _k_: Convert to NSFW"
    :bindings
    ("m" Tn/add-misc-tag)
    ("p" Tn/add-food-tag)
    ("p" Tn/org-tag-people-hydra/body)
    ("l" Tn/org-tag-location-hydra/body)
    ("a" Tn/org-tag-academic-hydra/body)
    ("c" Tn/org-tag-content-hydra/body)
    ("f" Tn/org-tag-physical-project-hydra/body)
    ("d" Tn/org-tag-digital-project-hydra/body)
    ("k" Tn/convert-to-NSFW)
    ("q" nil :exit t))

  (defun Tn/convert-to-NSFW ()
    (interactive)
    (org-set-tags (delete "SFW" (org-get-tags)))
    (org-set-tags (append (org-get-tags) '("NSFW"))))

  (defun Tn/add-misc-tag ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("MISC"))))

  (defun Tn/add-food-tag ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FOOD"))))

  (spacemacs|define-transient-state Tn/tag-people
    :title "People"
    :foreign-keys run
    :doc "
                   People
    -------------------------------------
       _o_: Out Going   _i_: In Coming
       _p_: Phone       _e_: Email
    "
    :bindings
    ("o" Tn/org-tag-out-going)
    ("i" Tn/org-tag-in-coming)
    ("e" Tn/org-tag-phone)
    ("p" Tn/org-tag-email)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-out-going ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@OUT-GOING"))))

  (defun Tn/org-tag-in-coming ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@IN-COMING"))))

  (defun Tn/org-tag-phone ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PHONE"))))

  (defun Tn/org-tag-email ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("EMAIL"))))

  (spacemacs|define-transient-state Tn/tag-locations
    :title "Locations"
    :foreign-keys run
    :doc "
              Location
    ----------------------------------
       _h_: Home    _s_: Studio
       _d_: Desk    _m_: MakerSpace
       _p_: Phone   _c_: Car
       _f_: CF-Gym  _o_: Oly-Gym
          _v_: VA-Hospital"
    :bindings
    ("h" Tn/org-tag-home)
    ("d" Tn/org-tag-desk)
    ("p" Tn/org-tag-phone)
    ("f" Tn/org-tag-cf-gym)
    ("s" Tn/org-tag-studio)
    ("m" Tn/org-tag-makespace)
    ("c" Tn/org-tag-car)
    ("v" Tn/org-tag-va-hospital)
    ("o" Tn/org-tag-oly-gym)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-home ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@HOME"))))

  (defun Tn/org-tag-desk ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@DESK"))))

  (defun Tn/org-tag-phone ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@PHONE"))))

  (defun Tn/org-tag-cf-gym ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@CF-GYM"))))

  (defun Tn/org-tag-studio ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@STUDIO"))))

  (defun Tn/org-tag-makerspace ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@MAKESPACE"))))

  (defun Tn/org-tag-car ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@CAR"))))

  (defun Tn/org-tag-oly-gym ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@OLY-GYM"))))

  (defun Tn/org-tag-va-hospital ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("@VA-HOSPITAL"))))

  (spacemacs|define-transient-state Tn/tag-academic
    :title "Academic Subjects"
    :foreign-keys run
    :doc "
            Academic Subject
    ------------------------------------------
       _f_: Physics   _l_: Linguistics
       _m_: Maths     _c_: Computer Science
       _h_: History   _t_: Philosophy
       _a_: Anatomy   _k_: Architecture
                 _l_: Lojban
    "
    :bindings
    ("f" Tn/org-tag-physics)
    ("m" Tn/org-tag-maths)
    ("h" Tn/org-tag-history)
    ("a" Tn/org-tag-anatomy)
    ("l" Tn/org-tag-linguistics)
    ("c" Tn/org-tag-computer-science)
    ("t" Tn/org-tag-philosophy)
    ("l" Tn/org-tag-lojban)
    ("k" Tn/org-tag-architecture)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-physics ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PHYSICS"))))

  (defun Tn/org-tag-linguistics ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("LINGUISTICS"))))

  (defun Tn/org-tag-maths ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("MATHS"))))

  (defun Tn/org-tag-computer-science ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("COMPUTER-SCIENCE"))))

  (defun Tn/org-tag-history ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("HISTORY"))))

  (defun Tn/org-tag-philosophy ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PHILOSOPHY"))))

  (defun Tn/org-tag-lojban ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("LOJBAN"))))

  (defun Tn/org-tag-anatomy ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ANATOMY"))))

  (defun Tn/org-tag-Architecture ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ARCHITECTURE"))))

  (spacemacs|define-transient-state Tn/tag-content
    :title "Content Types"
    :foreign-keys run
    :doc "
            Content Types
    --------------------------------
       _s_: Stream    _v_: Video
       _t_: Text      _c_: Clips
         _p_: Social Promotion
    "
    :bindings
    ("s" Tn/org-tag-stream)
    ("v" Tn/org-tag-video)
    ("t" Tn/org-tag-text)
    ("p" Tn/org-tag-social)
    ("c" Tn/org-tag-short)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-stream ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("STREAM"))))

  (defun Tn/org-tag-video ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("VIDEO"))))

  (defun Tn/org-tag-text ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("TEXT"))))

  (defun Tn/org-tag-text ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SOCIAL"))))

  (defun Tn/org-tag-short ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("CLIP"))))

  (spacemacs|define-transient-state Tn/tag-physical-project
    :title "Physical Project"
    :foreign-keys run
    :doc "
                Physical Project
    -------------------------------------------
       _i_: Illustration  _p_: Painting
       _s_: Sculpture     _e_: Electronics
               _f_: Fabrication"
    :bindings
    ("i" Tn/org-tag-illustration-hydra/body)
    ("s" Tn/org-tag-sculpture-hydra/body)
    ("p" Tn/org-tag-painting-hydra/body)
    ("e" Tn/org-tag-electronics-hydra/body)
    ("f" Tn/org-tag-fabrication-hydra/body)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (spacemacs|define-transient-state Tn/tag-sculpture
    :title "Sculpture"
    :foreign-keys run
    :doc "
           Sculpture
    -----------------------------
    _k_: Clay     _w_: Wax
    _s_: Stone    _o_: Wood
    _c_: Chasing  _e_: Engraving"
    :bindings
    ("k" Tn/org-tag-sculpture-clay)
    ("w" Tn/org-tag-sculpture-wax)
    ("s" Tn/org-tag-sculpture-stone)
    ("o" Tn/org-tag-sculpture-wood)
    ("c" Tn/org-tag-sculpture-chasing)
    ("e" Tn/org-tag-sculpture-engraving)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-sculpture-chasing ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("CHASING"))))

  (defun Tn/org-tag-sculpture-engraving ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("ENGRAVING"))))

  (defun Tn/org-tag-sculpture-wood ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("WOOD"))))

  (defun Tn/org-tag-sculpture-stone ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("STONE"))))

  (defun Tn/org-tag-sculpture-wax ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("WAX"))))

  (defun Tn/org-tag-sculpture-clay ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("SCULPTURE")))
    (org-set-tags (append (org-get-tags) '("CLAY"))))

  (spacemacs|define-transient-state Tn/tag-illustration
    :title "Illustration"
    :foreign-keys run
    :doc "
           Illustration
    -----------------------------
    _i_: Ink      _g_: Graphite
    _p_: Pastel   _c_: Charcoal"
    :bindings
    ("g" Tn/org-tag-illustration-graphite)
    ("i" Tn/org-tag-illustration-ink)
    ("c" Tn/org-tag-illustration-charcoal)
    ("p" Tn/org-tag-illustration-pastel)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-illustration-graphite ()
    (interactive)
    (org-set-tags ":ILLUSTRATION:")
    (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
    (org-set-tags (append (org-get-tags) '("GRAPHITE"))))

  (defun Tn/org-tag-illustration-ink ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
    (org-set-tags (append (org-get-tags) '("INK"))))

  (defun Tn/org-tag-illustration-charcoal ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
    (org-set-tags (append (org-get-tags) '("CHARCOAL"))))

  (defun Tn/org-tag-illustration-pastel ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
    (org-set-tags (append (org-get-tags) '("PASTEL"))))

  (spacemacs|define-transient-state Tn/tag-painting
    :title "Painting"
    :foreign-keys run
    :doc "
            Painting
    -----------------------------
     _o_: Oil   _a_: Acrylic
     _i_: Ink   _w_: Water Color"
    :bindings
    ("o" Tn/org-tag-painting-oil)
    ("i" Tn/org-tag-painting-ink)
    ("a" Tn/org-tag-painting-acrylic)
    ("w" Tn/org-tag-painting-water-color)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-painting-oil ()
    (interactive)
    (org-set-tags ":PAINTING:")
    (org-set-tags (append (org-get-tags) '("PAINTING")))
    (org-set-tags (append (org-get-tags) '("OIL"))))

  (defun Tn/org-tag-painting-acrylic ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PAINTING")))
    (org-set-tags (append (org-get-tags) '("ACRYLIC"))))

  (defun Tn/org-tag-painting-water-color ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PAINTING")))
    (org-set-tags (append (org-get-tags) '("WATER-COLOR"))))

  (defun Tn/org-tag-painting-ink ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("PAINTING")))
    (org-set-tags (append (org-get-tags) '("INK"))))

  (spacemacs|define-transient-state Tn/tag-fabrication
    :title "Fabrication"
    :foreign-keys run
    :doc "
            Fabrication
    --------------------------------
    _w_: Welding   _m_: Machining
    _c_: Casting   _f_: Forging
    _k_: Carpentry _s_: stone"
    :bindings
    ("w" Tn/org-tag-fabrication-welding)
    ("m" Tn/org-tag-fabrication-machining)
    ("c" Tn/org-tag-fabrication-casting)
    ("f" Tn/org-tag-fabrication-forging)
    ("k" Tn/org-tag-fabrication-carpentry)
    ("s" Tn/org-tag-fabrication-stone)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-fabrication-welding ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("WELDING"))))

  (defun Tn/org-tag-fabrication-machining ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("MACHINING"))))

  (defun Tn/org-tag-fabrication-casting ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("CASTING"))))

  (defun Tn/org-tag-fabrication-forging ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("FORGING"))))

  (defun Tn/org-tag-fabrication-carpentry ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("CARPENTRY"))))

  (defun Tn/org-tag-fabrication-concrete ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("FABRICATION")))
    (org-set-tags (append (org-get-tags) '("STONE"))))

  (spacemacs|define-transient-state Tn/tag-electronics
    :title "Electronics"
    :foreign-keys run
    :doc "
          Electronics
    -----------------------
       _b_: Bread Boards
       _s_: Soldering"
    :bindings
    ("b" Tn/org-tag-electronics-bread-board)
    ("s" Tn/org-tag-electronics-soldering)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-electronics-soldering ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ELECTRONICS")))
    (org-set-tags (append (org-get-tags) '("SOLDERING"))))

  (defun Tn/org-tag-electronics-bread-board ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("ELECTRONICS")))
    (org-set-tags (append (org-get-tags) '("BREAD-BOARD"))))

  (spacemacs|define-transient-state Tn/helm-actions
    :title "Helm Actions"
    :foreign-keys run
    :doc "
               Digital Projects
    ----------------------------------------
    _i_: Illustration    _p_: Painting
    _s_: Sculpture       _a_: Animation
    _v_: Video Editing   _e_: Image Editing
    _c_: CAD             _g_: Game Design"
    :bindings
    ("i" Tn/org-tag-digital-illustration)
    ("s" Tn/org-tag-digital-sculpture)
    ("c" Tn/org-tag-cad)
    ("p" Tn/org-tag-digital-painting)
    ("v" Tn/org-tag-video-editing)
    ("e" Tn/org-tag-image-editing)
    ("a" Tn/org-tag-digital-animation)
    ("g" Tn/org-tag-game-design)
    ("r" spacemacs/Tn/tag-main-menu-transient-state/body)
    ("q" nil :exit t))

  (defun Tn/org-tag-digital-illustration ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("DIGITAL")))
    (org-set-tags (append (org-get-tags) '("ILLUSTRATION"))))

  (defun Tn/org-tag-digital-sculpture ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("DIGITAL")))
    (org-set-tags (append (org-get-tags) '("SCULPTURE"))))

  (defun Tn/org-tag-digital-painting ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("DIGITAL")))
    (org-set-tags (append (org-get-tags) '("PAINTING"))))

  (defun Tn/org-tag-digital-animation ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("DIGITAL")))
    (org-set-tags (append (org-get-tags) '("ANIMATION"))))

  (defun Tn/org-tag-game-design ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("GAME-DESIGN"))))

  (defun Tn/org-tag-video-editing ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("VIDEO-EDITING"))))

  (defun Tn/org-tag-image-editing ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("IMAGE-EDITING"))))

  (defun Tn/org-tag-cad ()
    (interactive)
    (org-set-tags (append (org-get-tags) '("CAD"))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The code below this point is fragile. It uses tags to automattically ;;;;
;;; add and remove org roam files from the agenda file list to prevent   ;;;;
;;; large file numbers from slowing it down.                             ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



  (defun Tn/project-p ()
    "Return non-nil if current buffer has any todo entry.
TODO entries marked as done are ignored, meaning the this
function returns nil if current buffer contains only completed
tasks."
    (seq-find                                 ; (3)
     (lambda (type)
       (eq type 'todo))
     (org-element-map                         ; (2)
         (org-element-parse-buffer 'headline) ; (1)
         'headline
       (lambda (h)
         (org-element-property :todo-type h)))))

  (defun Tn/project-update-tag ()
    "Update PROJECT tag in the current buffer."
    (when (and (not (active-minibuffer-window))
               (Tn/buffer-p))
      (save-excursion
        (goto-char (point-min))
        (let* ((tags (Tn/buffer-tags-get))
               (original-tags tags))
          (if (Tn/project-p)
              (setq tags (cons "ToDo" tags))
            (setq tags (remove "ToDo" tags)))

          ;; cleanup duplicates
          (setq tags (seq-uniq tags))

          ;; update tags if changed
          (when (or (seq-difference tags original-tags)
                    (seq-difference original-tags tags))
            (apply #'Tn/buffer-tags-set tags))))))

  (defun Tn/buffer-p ()
    "Return non-nil if the currently visited buffer is a note."
    (and buffer-file-name
         (string-prefix-p
          (expand-file-name (file-name-as-directory (file-truename "~/Grimoire")))
          (file-name-directory buffer-file-name))))

  (defun Tn/project-files ()
    "Return a list of note files containing 'ToDo' tag." ;
    (seq-uniq
     (seq-map
      #'car
      (org-roam-db-query
       [:select [nodes:file]
                :from tags
                :left-join nodes
                :on (= tags:node-id nodes:id)
                :where (like tag (quote "%\"ToDo\"%"))]))))



  (defun Tn/buffer-tags-get ()
    "Return filetags value in current buffer."
    (Tn/buffer-prop-get-list "filetags" "[ :]"))

  (defun Tn/buffer-tags-set (&rest tags)
    "Set TAGS in current buffer.

If filetags value is already set, replace it."
    (if tags
        (Tn/buffer-prop-set
         "filetags" (concat ":" (string-join tags ":") ":"))
      (Tn/buffer-prop-remove "filetags")))

  (defun Tn/buffer-tags-add (tag)
    "Add a TAG to filetags in current buffer."
    (let* ((tags (Tn/buffer-tags-get))
           (tags (append tags (list tag))))
      (apply #'Tn/buffer-tags-set tags)))

  (defun Tn/buffer-tags-remove (tag)
    "Remove a TAG from filetags in current buffer."
    (let* ((tags (Tn/buffer-tags-get))
           (tags (delete tag tags)))
      (apply #'Tn/buffer-tags-set tags)))

  (defun Tn/buffer-prop-set (name value)
    "Set a file property called NAME to VALUE in buffer file.
If the property is already set, replace its value."
    (setq name (downcase name))
    (org-with-point-at 1
      (let ((case-fold-search t))
        (if (re-search-forward (concat "^#\\+" name ":\\(.*\\)")
                               (point-max) t)
            (replace-match (concat "#+" name ": " value) 'fixedcase)
          (while (and (not (eobp))
                      (looking-at "^[#:]"))
            (if (save-excursion (end-of-line) (eobp))
                (progn
                  (end-of-line)
                  (insert "\n"))
              (forward-line)
              (beginning-of-line)))
          (insert "#+" name ": " value "\n")))))

  (defun Tn/buffer-prop-set-list (name values &optional separators)
    "Set a file property called NAME to VALUES in current buffer.
VALUES are quoted and combined into single string using
`combine-and-quote-strings'.
If SEPARATORS is non-nil, it should be a regular expression
matching text that separates, but is not part of, the substrings.
If nil it defaults to `split-string-default-separators', normally
\"[ \f\t\n\r\v]+\", and OMIT-NULLS is forced to t.
If the property is already set, replace its value."
    (Tn/buffer-prop-set
     name (combine-and-quote-strings values separators)))

  (defun Tn/buffer-prop-get (name)
    "Get a buffer property called NAME as a string."
    (org-with-point-at 1
      (when (re-search-forward (concat "^#\\+" name ": \\(.*\\)")
                               (point-max) t)
        (buffer-substring-no-properties
         (match-beginning 1)
         (match-end 1)))))

  (defun Tn/buffer-prop-get-list (name &optional separators)
    "Get a buffer property NAME as a list using SEPARATORS.
If SEPARATORS is non-nil, it should be a regular expression
matching text that separates, but is not part of, the substrings.
If nil it defaults to `split-string-default-separators', normally
\"[ \f\t\n\r\v]+\", and OMIT-NULLS is forced to t."
    (let ((value (Tn/buffer-prop-get name)))
      (when (and value (not (string-empty-p value)))
        (split-string-and-unquote value separators))))

  (defun Tn/buffer-prop-remove (name)
    "Remove a buffer property called NAME."
    (org-with-point-at 1
      (when (re-search-forward (concat "\\(^#\\+" name ":.*\n?\\)")
                               (point-max) t)
        (replace-match ""))))







)
