;;; evil-occur.el --- Evil integration for occur. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, occur, emacs
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
;; Evil integration for `occur'.

;;; Code:
(require 'evil-evilified-state)

(when (> emacs-major-version 25)
  (require 'replace))

(evilified-state-evilify-map occur-mode-map
  :mode occur-mode
  :bindings
  "w" 'evil-forward-word-begin
  "e" 'evil-forward-word-end
  "W" 'evil-forward-WORD-begin
  "E" 'evil-forward-WORD-end
  "b" 'evil-backward-word-begin
  "B" 'evil-backward-WORD-begin
  "gr" 'revert-buffer
  "gj" 'occur-next
  "gk" 'occur-prev
  "H" 'describe-mode
  "\C-j" 'occur-next
  "\C-k" 'occur-prev)

(provide 'evil-occur)
;;; evil-occur.el ends here
