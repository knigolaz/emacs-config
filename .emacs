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

;; HELP KEYBOARD
(defun show-my-help ()
  (interactive)
  (message " 
Сочетание   Функция                  Описание
клавиш             
------------------------------------------------------------------
C-v         yank                     Вставить текст
C-x C-a     kill-region              Вырезать текст
C-c         kill-ring-save           Скопировать текст
F5          other-window             переход по окнам
M-1         move-beginning-of-line   Перескочить на начало строки
M-2         move-end-of-line         Перескочить на конец строки
C-s         save-buffer              Сохранить файл
C-f         isearch-forward          Поиск
C-o         find-file                Открыть файл
C-t         table-insert             Вставить таблицу 
------------------------------------------------------------------
"))
;; No first screen
(setq inhibit-startup-message t)

;; FULLSCREEN
(toggle-frame-fullscreen)

;; Font
(set-default-font "Courier New-11")

;; Path
;;(setq frame-title-format "emacs - %f

;; Line number
(setq linum-format "%d ")
(global-linum-mode 1)
