;;; evil-pass.el --- Evil integration for `pass'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, pass, emacs
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
;; Evil integration for `pass-mode'.

;;; Code:
(require 'evil-integration-base)
(require 'pass)

(+evilify-map
 pass-mode-map
 :mode pass-mode
 :bindings
 "y" #'pass-copy
 "j" #'pass-next-entry
 "k" #'pass-prev-entry
 "\C-j" #'pass-next-directory
 "\C-k" #'pass-prev-directory
 "x" #'pass-kill
 "s" #'isearch-forward
 "?" #'describe-mode
 "gr" #'pass-update-buffer)

(provide 'evil-pass)
;;; evil-pass.el ends here
