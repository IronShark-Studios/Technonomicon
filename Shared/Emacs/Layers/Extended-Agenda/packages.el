;;; packages.el --- Extended-Agenda layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2024 Sylvain Benner & Contributors
;;
;; Author:  <xin@ironshark.org>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `Extended-Agenda-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `Extended-Agenda/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `Extended-Agenda/pre-init-PACKAGE' and/or
;;   `Extended-Agenda/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst Extended-Agenda-packages
  '(;;calfw
    ;;calfw-org
    ;;org-gcal
    org-super-agenda))

(defun Extended-Agenda/init-org-super-agenda ()
  (use-package org-super-agenda
    :defer t))

;; (defun Extended-Agenda/init-calfw ()
;;   "Initialize calfw and add key-bindings"
;;   (use-package calfw
;;     :defer t
;;     :commands (cfw:open-calendar-buffer)
;;     :init
;;     (spacemacs/set-leader-keys "aCd" 'cfw:open-calendar-buffer)
;;     :config
;;     (progn
;;       (define-key cfw:calendar-mode-map (kbd "SPC") 'spacemacs-cmds)
;;       (define-key cfw:calendar-mode-map (kbd "TAB") 'cfw:show-details-command)
;;       (define-key cfw:calendar-mode-map (kbd "C-j") 'cfw:navi-next-item-command)
;;       (define-key cfw:calendar-mode-map (kbd "C-k") 'cfw:navi-prev-item-command))))

(defun Extended-Agenda/init-calfw-org ()
  "Initialize calfw-org and add key-bindings"
  (use-package calfw-org
    :defer t
    :commands (cfw:open-org-calendar)
    :init
    (spacemacs/set-leader-keys "aoCd" 'cfw:open-org-calendar)
    :config
    (progn
      (define-key cfw:org-schedule-map (kbd "SPC") 'spacemacs-cmds)
      (define-key cfw:org-schedule-map (kbd "TAB") 'cfw:org-open-agenda-day)
      (define-key cfw:org-custom-map (kbd "SPC") 'spacemacs-cmds)
      (define-key cfw:org-custom-map (kbd "TAB") 'cfw:org-open-agenda-day))))

;; (defun Extended-Agenda/init-org-gcal ()
;;   "Initialize org-gcal"
;;   (use-package org-gcal
;;     :defer t
;;     :commands (org-gcal-sync
;;                org-gcal-fetch
;;                org-gcal-post-at-point
;;                org-gcal-delete-at-point)))
