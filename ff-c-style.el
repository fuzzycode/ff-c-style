;;; ff-c-style.el --- My personal c style

;; Copyright (C) 2010-2019 Björn Larsson

;; Author: Björn Larsson <develop@bjornlarsson.net>
;; Maintainer: Björn Larsson <develop@bjornlarsson.net>
;; Created: 2019-12-01
;; Keywords: styles
;; Homepage:

;; This file is not part of GNU Emacs.

;;; Commentary:

;;; code:

;;;###autoload
(defconst ff-c-style
  '((fill-column . 120)
    (whitespace-line-column . 120)
    (c-comment-only-line-offset . 0)
    (indent-tabs-mode . t)
    (tab-width . 4)
    (c-basic-offset . 4)
    (tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

    (c-offsets-alist
     (access-label . -)
     (arglist-cont . 0)
     (arglist-intro . +)
     (block-close . 0)
     (defun-block-intro . +)
     (defun-close . 0)
     (else-clause . 0)
     (inline-close . 0)
     (innamespace . +)
     (member-init-cont . -)
     (member-init-intro . +)
     (namespace-close . 0)
     (statement . 0)
     (statement-block-intro . +)
     (statement-cont . -)
     (topmost-intro . 0)
     (topmost-intro-cont . 0)
     (access-label . -)
     (annotation-top-cont . 0)
     (annotation-var-cont . +)
     (arglist-close . c-lineup-close-paren)
     (arglist-cont-nonempty . c-lineup-arglist)
     (block-open . 0)
     (brace-entry-open . 0)
     (brace-list-close . -)
     (brace-list-entry . 0)
     (brace-list-intro . 0)
     (brace-list-open . 0)
     (c . c-lineup-C-comments)
     (case-label . +)
     (catch-clause . 0)
     (class-close . 0)
     (class-open . 0)
     (comment-intro . c-lineup-comment)
     (composition-close . 0)
     (composition-open . 0)
     (cpp-define-intro c-lineup-cpp-define +)
     (cpp-macro . -1000)
     (cpp-macro-cont . 0)
     (defun-open . 0)
     (do-while-closure . 0)
     (extern-lang-close . 0)
     (extern-lang-open . 0)
     (friend . 0)
     (func-decl-cont . +)
     (inclass . +)
     (incomposition . +)
     (inexpr-class . +)
     (inexpr-statement . +)
     (inextern-lang . +)
     (inher-cont . c-lineup-multi-inher)
     (inher-intro . +)
     (inlambda . 0)
     (inline-open . 0)
     (inmodule . +)
     (knr-argdecl . 0)
     (knr-argdecl-intro . 0)
     (label . 0)
     (lambda-intro-cont . +)
     (module-close . 0)
     (module-open . 0)
     (namespace-open . 0)
     (objc-method-args-cont . c-lineup-ObjC-method-args)
     (objc-method-call-cont c-lineup-ObjC-method-call-colons c-lineup-ObjC-method-call +)
     (objc-method-intro . [0])
     (statement-case-intro . +)
     (statement-case-open . 0)
     (stream-op . c-lineup-streamop)
     (string . -1000)
     (substatement . +)
     (substatement-label . 0)
     (substatement-open . 0)
     (template-args-cont c-lineup-template-args +))


    ;; Control brace placement
    (c-hanging-braces-alist .
                            ((block-close . c-snug-do-while)
                             (substatement-open . (after))
                             (namespace-open . (after))
                             (namespace-close . (before after))
                             (class-open . (after))
                             (extern-lang-open . (after))))

    (c-hanging-colons-alist .
                            ((case-label)
                             (label after)
                             (access-label after)
                             (member-init-intro before)
                             (inher-intro)))

    (c-cleanup-list .
                    (scope-operator
                     defun-close-semi
                     empty-defun-braces)))
  "FF C Style Guide.")




;;;###autoload
(defun ff-add-c-style ()
  "Add ff-c-style."
  (interactive)
  (c-add-style "FF" ff-c-style nil))

;;;###autoload
(defun ff-set-c-style ()
  "Add and set the current style to ff-c-style."
  (interactive)
  (c-add-style "FF" ff-c-style t))

(provide 'ff-c-style)

;;; ff-c-style.el ends here
