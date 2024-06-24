(require 'package)

;; add MELPA as a package repository
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; set the custom theme directory to be the ~/.emacs.d/themes directory
(setq custom-theme-directory "~/.emacs.d/themes/")

;; set default dark color theme
(load-theme 'kanagawa t)

;; set default font for all frames to favorite coding fonts
(condition-case nil
    (set-frame-font "Fira Code-12")
    (set-frame-font "Cascadia Code-12")
    (set-frame-font "Source Code Pro-12")
    (error (set-frame-font "Monospace-11")))

;; set emacs GUI frames to start maximized on Windows
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; change gpg key directory to the default in my home directory
(setq package-gnupghome-dir nil)

;; stop screen from jumping if the cursor goes off-screen
(setq scroll-conservatively 101)

;; set deleted files to be sent to the recycle/trash bin
(setq delete-by-moving-to-trash t)

;; turn off annoying bell sound
(setq visible-bell 1)

;; show column number as well as the line number
(setq column-number-mode t)

(defun stop-home-screen-on-open-file-startup ()
    "Inhibits the home screen from loading if emacs initially opens a file."
    (ignore
        (setq inhibit-startup-screen
            (file-exists-p
                (expand-file-name argi command-line-default-directory)))))

;; stop the home screen from being loaded if emacs initially opens a file
(add-hook 'command-line-functions #'stop-home-screen-on-open-file-startup)

;; AUTO-GENERATED --- DO NOT TOUCH
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("be73fbde027b9df15a98a044bcfff4d46906b653cb6eef0d98ebccb7f8425dc9" "a1cc9036090e5af910b9f28ac460bb3b0eea513637fc2663e454cad14d70e5db" default))
 '(package-selected-packages
   '(org gnu-elpa-keyring-update list-packages-ext company markdown-mode autothemer)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
