;;; evil-org.el --- Evil integration for `org-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, emacs, org
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
;;; Evil integration for `org-mode'.

;;; Code:
(require 'evil-integration-base)
(require 'org-agenda)

(+evilify-map
 org-agenda-mode-map
 :mode org-agenda-mode
 :bindings
 "gt" 'org-agenda-goto-today
 "gc" 'org-agenda-goto-calendar
 "gd" 'org-agenda-goto-date)

(provide 'evil-org)
;;; evil-org.el ends here
