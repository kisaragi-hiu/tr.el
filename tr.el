;;; tr.el --- clean tr implementation without options
;; Authors: Kisaragi Hiu <mail@kisaragi-hiu.com>
;; URL: https://github.com/kisaragi-hiu/tr.el
;; Version: 0.0.2
;; Package-Requires: ((emacs "24") (s "1.12.0") (dash "2.14.1"))
;;
;; This file is NOT part of GNU Emacs.
;;
;; tr.el is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; tr.el is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with tr.el.
;; If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; I don't need backward compatibility with decades-old unix scripts,
;; I just want a tr that works with unicode. This is it.
;;; Code:
(require 's)
(require 'dash)

;;;###autoload
(defun tr (set1 set2 str)
  "Replace SET1 characters present in STR with corresponding SET2 characters.

Example: \(tr \"abc\" \"ab\" \"cd\"\) -> \"cdc\""
  (mapc (lambda (mapping)
          (setq str (s-replace (string (car mapping))
                               (string (cdr mapping))
                               str)))
        (-zip-pair (string-to-list set1) (string-to-list set2)))
  str)

(provide 'tr)
;;; tr.el ends here
