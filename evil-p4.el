;;; evil-p4.el --- Evil Integration for P4 -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, p4, tools
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
;; This package provides a sane set of defaults for `p4-mode' when using
;; `evil-mode'.
(require 'evil-integration-base)
(require 'p4)

(evil-define-key 'normal p4-basic-mode-map
  [mouse-1] 'p4-buffer-mouse-clicked
  "\t" 'p4-forward-active-link
  "\e\t" 'p4-backward-active-link
  [(shift tab)] 'p4-backward-active-link
  "\C-m" 'p4-buffer-commands
  "q" 'quit-window
  "gr" 'revert-buffer
  "k" 'p4-scroll-down-1-line
  "j" 'p4-scroll-up-1-line)

;;; Code:
(provide 'evil-p4)
;;; evil-p4.el ends here
