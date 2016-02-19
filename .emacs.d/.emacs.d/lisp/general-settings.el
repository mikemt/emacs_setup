;; ----------------------------------------------------------------------
;; General Settings
;; ----------------------------------------------------------------------
(provide 'general-settings)

(setq inhibit-startup-screen 1)
(size-indication-mode 1)         ;; auto text size
(setq backup-inhibited t)        ;; no ~ backup pollution 
(setq auto-save-default nil)     ;; no autosave
(setq-default ispell-program-name "aspell")

;; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)
;; don't show the scroll bar
(if window-system (scroll-bar-mode 0))

;; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 55))
  (add-to-list 'default-frame-alist '(width . 90))
  (set-frame-position (selected-frame) 0 0))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

;; highlight parentheses
(require 'paren)
(show-paren-mode 1)

;; Turn off blinking cursor
(blink-cursor-mode 0)

;; Coumn and line numbers
(line-number-mode 1)
(column-number-mode 1)
(global-linum-mode t)

;; Trurn on transient mark mode
(transient-mark-mode 1)

(require 'font-lock)
(global-font-lock-mode 1)
(global-hi-lock-mode nil)

;; Fill tabs with whitespace
(setq-default indent-tabs-mode nil)

;; number of characters until the fill column
(setq-default fill-column 70)
(setq-default truncate-lines 1)
(setq truncate-partial-width-windows 1)


;; Windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; ignore case when searching
(setq-default case-fold-search 1)

;; require final newlines in files
(setq require-final-newline 1)
;; Add a new line when going to the next line
(setq next-line-add-newlines t)

;; keybinds
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<home>") 'beginning-of-buffer)
(define-key global-map [f5] 'goto-line)
(define-key global-map [f6] 'compile)
(define-key global-map "\C-c\C-k" 'copy-line)
(global-set-key "\C-c\C-v" 'ispell-complete-word)
(if (system-is-darwin)
        (setq ns-command-modifier 'meta))
