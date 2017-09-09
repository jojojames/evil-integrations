;;; evil-ibuffer.el --- Evil Integration for IBuffer -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, ibuffer, tools
;; HomePage: https://github.com/jojojames/evil-integrations

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; This package provides a sane set of defaults for `ibuffer-mode' when using
;; `evil-mode'.

;;; Code:
(require 'evil-integration-base)
(require 'ibuffer)

(evil-set-initial-state 'ibuffer-mode 'normal)
(evil-define-key 'normal ibuffer-mode-map
  (kbd "1") 'digit-argument
  (kbd "2") 'digit-argument
  (kbd "3") 'digit-argument
  (kbd "4") 'digit-argument
  (kbd "5") 'digit-argument
  (kbd "6") 'digit-argument
  (kbd "7") 'digit-argument
  (kbd "8") 'digit-argument
  (kbd "9") 'digit-argument

  (kbd "m") 'ibuffer-mark-forward
  (kbd "t") 'ibuffer-toggle-marks
  (kbd "u") 'ibuffer-unmark-forward
  (kbd "=") 'ibuffer-diff-with-file
  (kbd "J") 'ibuffer-jump-to-buffer
  (kbd "M-g") 'ibuffer-jump-to-buffer
  (kbd "M-s a C-s") 'ibuffer-do-isearch
  (kbd "M-s a M-C-s") 'ibuffer-do-isearch-regexp
  (kbd "M-s a C-o") 'ibuffer-do-occur
  (kbd "DEL") 'ibuffer-unmark-backward
  (kbd "M-DEL") 'ibuffer-unmark-all
  (kbd "* *") 'ibuffer-unmark-all
  (kbd "* c") 'ibuffer-change-marks
  (kbd "U") 'ibuffer-unmark-all-marks
  (kbd "* M") 'ibuffer-mark-by-mode
  (kbd "* m") 'ibuffer-mark-modified-buffers
  (kbd "* u") 'ibuffer-mark-unsaved-buffers
  (kbd "* s") 'ibuffer-mark-special-buffers
  (kbd "* r") 'ibuffer-mark-read-only-buffers
  (kbd "* /") 'ibuffer-mark-dired-buffers
  (kbd "* e") 'ibuffer-mark-dissociated-buffers
  (kbd "* h") 'ibuffer-mark-help-buffers
  (kbd "* z") 'ibuffer-mark-compressed-file-buffers
  (kbd ".") 'ibuffer-mark-old-buffers

  (kbd "d") 'ibuffer-mark-for-delete
  (kbd "C-d") 'ibuffer-mark-for-delete-backwards
  (kbd "K") 'ibuffer-mark-for-delete
  (kbd "x") 'ibuffer-do-kill-on-deletion-marks

  ;; immediate operations
  (kbd "n") 'ibuffer-forward-line
  (kbd "SPC") 'forward-line
  (kbd "p") 'ibuffer-backward-line
  (kbd "M-}") 'ibuffer-forward-next-marked
  (kbd "M-{") 'ibuffer-backwards-next-marked
  (kbd "gl") 'ibuffer-redisplay
  (kbd "gr") 'ibuffer-update
  "`" 'ibuffer-switch-format
  "-" 'ibuffer-add-to-tmp-hide
  "+" 'ibuffer-add-to-tmp-show
  "b" 'ibuffer-bury-buffer
  (kbd ",") 'ibuffer-toggle-sorting-mode
  (kbd "s i") 'ibuffer-invert-sorting
  (kbd "s a") 'ibuffer-do-sort-by-alphabetic
  (kbd "s v") 'ibuffer-do-sort-by-recency
  (kbd "s s") 'ibuffer-do-sort-by-size
  (kbd "s f") 'ibuffer-do-sort-by-filename/process
  (kbd "s m") 'ibuffer-do-sort-by-major-mode

  (kbd "/ RET") 'ibuffer-filter-by-mode
  (kbd "/ m") 'ibuffer-filter-by-used-mode
  (kbd "/ M") 'ibuffer-filter-by-derived-mode
  (kbd "/ n") 'ibuffer-filter-by-name
  (kbd "/ *") 'ibuffer-filter-by-starred-name
  (kbd "/ f") 'ibuffer-filter-by-filename
  (kbd "/ b") 'ibuffer-filter-by-basename
  (kbd "/ .") 'ibuffer-filter-by-file-extension
  (kbd "/ <") 'ibuffer-filter-by-size-lt
  (kbd "/ >") 'ibuffer-filter-by-size-gt
  (kbd "/ i") 'ibuffer-filter-by-modified
  (kbd "/ v") 'ibuffer-filter-by-visiting-file
  (kbd "/ c") 'ibuffer-filter-by-content
  (kbd "/ e") 'ibuffer-filter-by-predicate

  (kbd "/ r") 'ibuffer-switch-to-saved-filters
  (kbd "/ a") 'ibuffer-add-saved-filters
  (kbd "/ x") 'ibuffer-delete-saved-filters
  (kbd "/ d") 'ibuffer-decompose-filter
  (kbd "/ s") 'ibuffer-save-filters
  (kbd "/ p") 'ibuffer-pop-filter
  (kbd "/ <up>") 'ibuffer-pop-filter
  (kbd "/ !") 'ibuffer-negate-filter
  (kbd "/ t") 'ibuffer-exchange-filters
  (kbd "/ TAB") 'ibuffer-exchange-filters
  (kbd "/ o") 'ibuffer-or-filter
  (kbd "/ |") 'ibuffer-or-filter
  (kbd "/ &") 'ibuffer-and-filter
  (kbd "/ g") 'ibuffer-filters-to-filter-group
  (kbd "/ P") 'ibuffer-pop-filter-group
  (kbd "/ S-<up>") 'ibuffer-pop-filter-group
  (kbd "/ D") 'ibuffer-decompose-filter-group
  (kbd "/ /") 'ibuffer-filter-disable

  (kbd "M-n") 'ibuffer-forward-filter-group
  "\t" 'ibuffer-forward-filter-group
  (kbd "M-p") 'ibuffer-backward-filter-group
  [backtab] 'ibuffer-backward-filter-group
  (kbd "M-j") 'ibuffer-jump-to-filter-group
  (kbd "C-k") 'ibuffer-kill-line
  (kbd "C-y") 'ibuffer-yank
  (kbd "/ S") 'ibuffer-save-filter-groups
  (kbd "/ R") 'ibuffer-switch-to-saved-filter-groups
  (kbd "/ X") 'ibuffer-delete-saved-filter-groups
  (kbd "/ \\") 'ibuffer-clear-filter-groups

  (kbd "% n") 'ibuffer-mark-by-name-regexp
  (kbd "% m") 'ibuffer-mark-by-mode-regexp
  (kbd "% f") 'ibuffer-mark-by-file-name-regexp
  (kbd "% g") 'ibuffer-mark-by-content-regexp
  (kbd "% L") 'ibuffer-mark-by-locked

  (kbd "C-t") 'ibuffer-visit-tags-table

  (kbd "|") 'ibuffer-do-shell-command-pipe
  (kbd "!") 'ibuffer-do-shell-command-file
  (kbd "~") 'ibuffer-do-toggle-modified
  ;; marked operations
  (kbd "A") 'ibuffer-do-view
  (kbd "D") 'ibuffer-do-delete
  (kbd "E") 'ibuffer-do-eval
  (kbd "F") 'ibuffer-do-shell-command-file
  (kbd "I") 'ibuffer-do-query-replace-regexp
  (kbd "H") 'ibuffer-do-view-other-frame
  (kbd "N") 'ibuffer-do-shell-command-pipe-replace
  (kbd "M") 'ibuffer-do-toggle-modified
  (kbd "O") 'ibuffer-do-occur
  (kbd "P") 'ibuffer-do-print
  (kbd "Q") 'ibuffer-do-query-replace
  (kbd "R") 'ibuffer-do-rename-uniquely
  (kbd "S") 'ibuffer-do-save
  (kbd "T") 'ibuffer-do-toggle-read-only
  (kbd "r") 'ibuffer-do-replace-regexp
  (kbd "V") 'ibuffer-do-revert
  (kbd "W") 'ibuffer-do-view-and-eval
  (kbd "X") 'ibuffer-do-shell-command-pipe

  (kbd "k") 'ibuffer-do-kill-lines
  (kbd "w") 'ibuffer-copy-filename-as-kill
  (kbd "B") 'ibuffer-copy-buffername-as-kill

  (kbd "RET") 'ibuffer-visit-buffer
  (kbd "e") 'ibuffer-visit-buffer
  (kbd "f") 'ibuffer-visit-buffer
  (kbd "C-x C-f") 'ibuffer-find-file
  (kbd "o") 'ibuffer-visit-buffer-other-window
  (kbd "C-o") 'ibuffer-visit-buffer-other-window-noselect
  (kbd "M-o") 'ibuffer-visit-buffer-1-window
  (kbd "v") 'ibuffer-do-view
  (kbd "C-x v") 'ibuffer-do-view-horizontally
  (kbd "C-c C-a") 'ibuffer-auto-mode
  (kbd "C-x 4 RET") 'ibuffer-visit-buffer-other-window
  (kbd "C-x 5 RET") 'ibuffer-visit-buffer-other-frame

  ;; Custom
  (kbd "b") 'evil-backward-word-begin
  (kbd "w") 'evil-forward-word-begin
  (kbd "gg") 'evil-goto-first-line
  (kbd "h") 'evil-backward-char
  (kbd "j") 'evil-next-line
  (kbd "k") 'evil-previous-line
  (kbd "l") 'evil-forward-char
  (kbd "0") 'evil-beginning-of-line
  (kbd "SPC") nil)

(provide 'evil-ibuffer)
;;; evil-ibuffer.el ends here
