;; .emacs of Wajih Ul Hassan

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
; list the packages you want
(setq package-list
      '(whitespace company vscode-dark-plus-theme))


; activate all the packages
(package-initialize)

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; turn on auto-compression
(auto-compression-mode 1)

; if in doubt, guess latex, not tex
(setq tex-default-mode 'latex-mode)
(setq tex-start-options-string "")

(delete-selection-mode 1)
(show-paren-mode 1)

; don't beep, please
(setq visible-bell t)

; for latex
(auto-fill-mode -1)
(turn-off-auto-fill)

; don't go past the end of the file; i like to scroll
(setq next-line-add-newlines nil)

; open scala files in java mode
(setq auto-mode-alist (cons '("\\.scala$" . java-mode) auto-mode-alist))

; i18n
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

; the following 4 lines should make you feel 21 again :)
(setq comint-scroll-show-maximum-output nil)
(setq comint-use-prompt-regexp t)
(setq comint-prompt-regexp "^[^#$%>\n]*[#$%>] *")
(setq scroll-conservatively 101)

; it's easier to add a line than to remove
(setq require-final-newline nil)

; being compatible with modern editors
(setq mode-require-final-newline nil)

(define-key global-map (kbd "C-o") 'universal-argument)
(define-key universal-argument-map "\C-o" 'universal-argument-more)
(define-key universal-argument-map "\C-u" nil)

(global-set-key (kbd "C-u") 'save-buffer)
(global-set-key (kbd "C-l") 'find-file)
(global-set-key (kbd "M-l") 'goto-line)
(global-set-key "\C-x\C-n" 'ibuffer)
(global-set-key "\C-x\C-i" 'shell)

; open shell in current window
(add-to-list 'display-buffer-alist
             `(,(rx bos "*shell*")
               display-buffer-same-window
               (reusable-frames . visible)))

(setq-default fill-column 80)
;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; For lazy people who donot want to type yes full
(fset 'yes-or-no-p 'y-or-n-p)

;; Essentials
(menu-bar-mode -1)
(column-number-mode 1)

;; Put all the temporary ~ files in backup direcotory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

;; Copy single line if nothing is selected
(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; To make C-a jump to start of line, escaping spaces in front
(defun my/smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'my/smarter-move-beginning-of-line)

(require 'whitespace)

(setq whitespace-style '(face empty tabs lines-tail trailing))

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'emacs-startup-hook
  (lambda ()
    (load-theme 'vscode-dark-plus t)
    ))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "xclip-1.10")
(require 'xclip)
(xclip-mode 1)

;; nearly all of this is the default layout
;; Increase column width in emacs I-buffer
(setq ibuffer-formats
      '((mark modified read-only " "
              (name 30 30 :left :elide) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " " filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6c4c97a17fc7b6c8127df77252b2d694b74e917bab167e7d3b53c769a6abb6d6" "efc8341e278323cd87eda7d7a3736c8837b10ebfaa0d2be978820378d3d1b2e2" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-blue ((t (:background "cyan" :foreground "cyan")))))