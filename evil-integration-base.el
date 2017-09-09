;;; evil-integration-base.el --- Base Evil Utilities -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/evil-integrations
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, tools
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
;; This package provides a set of utility functions to integrate with
;; `evil-mode'.

;;; Code:
(require 'evil)

;;;###autoload
(defmacro evil-bind-key (keymaps modes &rest bindings)
  "Macro to allow keymaps to be bound."
  `(progn
     ,@(cl-loop
        for keymap in keymaps
        appending
        (cl-loop
         for mode in modes
         appending
         (cl-loop
          for i from 0 to (- (cl-list-length bindings) 1) when (cl-evenp i)
          collect
          (let ((key (nth i bindings))
                (cmd (nth (+ 1 i) bindings)))
            `(evil-define-key ',mode ,keymap ,key ,cmd)))))))

(provide 'evil-integration-base)
;;; evil-integration-base.el ends here
