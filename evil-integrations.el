;;; evil-integrations.el --- Evil Integrations -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, ag, tools
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
;; This package provides a sane set of defaults for `evil-mode'.

;;; Code:
(with-eval-after-load 'ag
  (require 'evil-ag))

(with-eval-after-load 'cider
  (require 'evil-cider))

(with-eval-after-load 'dired
  (require 'evil-dired))

(with-eval-after-load 'edebug
  (require 'evil-edebug))

(with-eval-after-load 'ibuffer
  (require 'evil-ibuffer))

(provide 'evil-integrations)
;;; evil-integrations.el ends here
