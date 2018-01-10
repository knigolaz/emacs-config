;; Custom variables
(package-initialize)
(custom-set-variables '(visible-cursor nil))

;; Background
(set-background-color "gray10")
(set-foreground-color "white")
(set-face-background 'region "darkgreen")

;; Menu
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; KEYBOARD
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-x C-a") 'kill-region)
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "<f5>") 'other-window)
(global-set-key (kbd "C-a") 'mark-paragraph)
(global-set-key (kbd "M-1") 'move-beginning-of-line)
(global-set-key (kbd "M-2") 'move-end-of-line)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-t") 'table-insert)
(global-set-key (kbd "<f12>") 'show-my-help)

(defun show-my-help ()
  (interactive)
  (message " 
Сочетание   Функция            Описание
клавиш             
-----------------------------------------------------------------
C-v         yank               Вставить текст
C-x C-a     kill-region        Вырезать текст
C-c         find-file          открыть файл на диске
F5          isearch-forward    Поиск строки вперед
M-1         isearch-backward   Поиск строки назад
M-2         help-with-tutorial Использовать интерактивный учебник
C-s         describe-function  Показать справку по функции
C-f         describe-variable  Показать справку по переменной
C-o         describe-key       Показать данные, о том, что делает
C-t         apropos            Поиск в справке по 
-----------------------------------------------------------------
")

;; No first screen
(setq inhibit-startup-message t)


;; Font
(set-default-font "Courier New-11")

;; Path
;;(setq frame-title-format "emacs - %f

;; Line number
(setq linum-format "%d ")
(global-linum-mode 1)
