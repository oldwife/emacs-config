;; hopefully this dosent ruin my life

;; will be following this guide:
;; https://systemcrafters.net/emacs-from-scratch/basics-of-emacs-configuration/

;; where do emacs configs live?
;; ~/.emacs or ~/.emacs.el < old, washed 
;; ~/.emacs.d/init.el < windows, macOS 
;; ~/.config/emacs/init.el < follows linux DE guidelines

;; most common things done in an init.el:
;; 1. configure features by SETTING VARIABLES
;; 2. enable or disable features by CALLING FUNCTIONS

;; SETTING VARIABLES
;; the following is an example config variable:
(setq inhibit-startup-message t)
;; this is a list expression
;; represents a call to a function "setq"
;; need to be wrapped in parentheses ()
;; functions seem to work the same as in bash
;; func_name    = setq
;; first_input  = inhibit-startup-message
;; second_input = t ( "t" = TRUE, "nil" = FALSE )

;; multiple config variable calls
;; this:
;; (setq inhibit-startup-message t)
;; (setq visible-bell t)
;; is the same as:
;; (setq inhibit-startup-message t
;; 	visible-bell t)

;; CALLING FUNCTIONS
;; some example function calls
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; these just call a "modes" function 
;; we are passing the value -1 to disable the modes here
;; we can jsut a easily enable things as follows
(global-display-line-numbers-mode 1) ; line numbers in every buffer

;; MODES
;; a collection of functionality in emacs
;; applied either to a buffer or entire editor
