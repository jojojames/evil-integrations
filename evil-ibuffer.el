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
(require 'evil-evilified-state)
(require 'ibuffer)

(evilified-state-evilify-map
  ibuffer-mode-map
  :mode ibuffer-mode
  :bindings
  "b" 'evil-backward-word-begin
  "B" 'evil-backward-WORD-begin
  "w" 'evil-forward-word-begin
  "W" 'evil-forward-WORD-begin
  "gb" 'ibuffer-bury-buffer
  "gB" 'ibuffer-copy-buffername-as-kill
  "gw" 'ibuffer-copy-filename-as-kill
  "gW" 'ibuffer-do-view-and-eval
  "gr" 'ibuffer-update
  "gx" 'ibuffer-kill-line
  "\C-j" 'ibuffer-forward-filter-group
  "\C-k" 'ibuffer-backward-filter-group ; Originally `ibuffer-kill-line'.
  "gj" 'ibuffer-forward-filter-group
  "gk" 'ibuffer-backward-filter-group)

(provide 'evil-ibuffer)
;;; evil-ibuffer.el ends here
