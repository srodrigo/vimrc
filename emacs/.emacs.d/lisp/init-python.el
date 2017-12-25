(require 'programming-mode)

(use-package elpy
  :ensure t)

(elpy-enable)

(add-hook 'python-mode-hook 'programming-mode)

(add-hook 'flycheck-mode-hook
  (lambda ()
    (progn
      (flycheck-add-mode 'python-pylint 'python-mode-hook))))

(add-hook 'python-mode-hook
  (lambda ()
    (progn
      (evil-leader/set-key "j" 'elpy-goto-definition)
      (evil-leader/set-key "t" 'elpy-test))))

(provide 'init-python)