;; ido completion for minibuffer
(require 'ido)
(ido-mode t)
(setq ido-save-directory-list-file "~/.emacs.d/ido/ido.last")
;; (setq ido-enable-flex-matching t) ; fuzzy matching is a must have
;; (setq ido-use-filename-at-point 'guess)

;; enable recent files mode.
(recentf-mode t)
(setq recentf-max-saved-items 10)
 
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

(global-set-key (kbd "C-x f") 'ido-recentf-open)
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(provide 'mn-ido)
