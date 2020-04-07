;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)

(require 'lang-ruby)

(require 'lang-haskell)

(require 'lang-rust)

(require 'lang-racket)

(require 'evil)
(evil-mode 1)
(global-evil-surround-mode 1)
