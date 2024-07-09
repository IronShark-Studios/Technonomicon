(when (configuration-layer/package-used-p 'org)

  (defun Tn/clock-sleep ()
    (interactive)
    (org-roam-dailies-capture-today nil "F"))

  (defun Tn/clock-food-prep ()
    (interactive)
    (org-roam-dailies-capture-today nil "Y"))

  (defun Tn/clock-eating ()
    (interactive)
    (org-roam-dailies-capture-today nil "A"))

  (defun Tn/clock-driving ()
    (interactive)
    (org-roam-dailies-capture-today nil "B"))

  (defun Tn/clock-korean-practice ()
    (interactive)
    (org-roam-dailies-capture-today nil "C"))

  (defun Tn/clock-lojban-practice ()
    (interactive)
    (org-roam-dailies-capture-today nil "D"))

  (defun Tn/clock-incoming-communication ()
    (interactive)
    (org-roam-dailies-capture-today nil "E"))

  (defun Tn/clock-outgoing-communication ()
    (interactive)
    (org-roam-dailies-capture-today nil "G"))

  (defun Tn/clock-intterrupt-bathroom ()
    (interactive)
    (org-roam-dailies-capture-today nil "X"))

  (defun Tn/clock-intterrupt-water ()
    (interactive)
    (org-roam-dailies-capture-today nil "W"))

  (defun Tn/clock-intterrupt-general ()
    (interactive)
    (org-roam-dailies-capture-today nil "G"))


  (spacemacs|define-transient-state Tn/clock-actions
    :title "Clock Actions"
    :foreign-keys run
    :doc "
    ^Org Clock^
    ------------------------------------------------
    _n_: Jump to Active     _a_: Display Active
    _e_: Clock in to last   _c_: Cancel Clock
               _s_: Recurring Tasks
               _t_: Interruptions "
    :bindings
    ("s" spacemacs/Tn/clock-interrupt-transient-state/body)
    ("t" spacemacs/Tn/clock-recurring-transient-state/body)
    ("n" org-clock-goto)
    ("a" org-clock-display)
    ("e" org-clock-in-last)
    ("c" org-clock-cancel)
    ("q" nil :exit t))

  (spacemacs|define-transient-state Tn/clock-interrupt
    :title "Clock Interrupts"
    :foreign-keys run
    :doc "
           Interruptions
    -----------------------------
          _b_: Bathroom
          _w_: Water Refil
          _g_: General"
    :bindings
    ("b" Tn/clock-intterrupt-bathroom)
    ("w" tn/clock-intterrupt-water)
    ("g" tn/clock-intterrupt-general)
    ("r" spacemacs/Tn/clock-actions-transient-state/body)
    ("q" nil :exit t))

  (spacemacs|define-transient-state Tn/clock-recurring
    :title "Recurring Tasks"
    :foreign-keys run
    :doc "
               Recurring
  ------------------------------------
    _i_: Incoming      _o_: Outgoing
    _k_: Korean        _l_: Lojban
    _f_: Food Prep     _e_: Eating
    _d_: Driving       _z_: Sleep"
    :bindings
    ("z" Tn/clock-sleep)
    ("f" Tn/clock-food-prep)
    ("e" Tn/clock-eating)
    ("d" Tn/clock-driving)
    ("k" Tn/clock-korean-practice)
    ("l" Tn/clock-lojban-practice)
    ("i" Tn/clock-incoming-communication)
    ("o" Tn/clock-outgoing-communication)
    ("r" spacemacs/Tn/clock-actions-transient-state/body)
    ("q" nil :exit t))

  )
