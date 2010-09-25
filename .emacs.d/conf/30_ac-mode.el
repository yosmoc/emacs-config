(load "ac-mode")
(setq ac-mode-goto-end-of-word t)
(add-hook 'find-file-hooks 'ac-mode-without-exception)
