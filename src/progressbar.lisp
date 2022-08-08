;; file progressbar.lisp

(in-package :cl-bootstrap)

(defmacro bs-progressbar((&key (type nil) (striped nil) (aria-valuenow nil)
			    (aria-valuemin nil) (aria-valuemax nil) (fill 0)) &body body)
    "Bootstrap progress-bar template."
    `(with-html-output (*standard-output*)
	 (:div :class "progress"
	       (:div :class (concatenate 'string "progress-bar "
					 (if ,striped (format nil "progress-bar-striped "))
					 (if ,type (format nil "progress-bar-~a" ,type)))
		     :role "progress-bar" :aria-valuenow ,aria-valuenow
		     :aria-valuemin ,aria-valuemin :aria-valuemax ,aria-valuemax
		     :style (format nil "width: ~a;" ,fill)
		     (:span :class "sr-only" ,@body)))))


(defmacro bs-progressbar-label((&key (type nil) (striped nil) (aria-valuenow nil)
			    (aria-valuemin nil) (aria-valuemax nil) (fill 0)) &body body)
    "Bootstrap labelledgress-bar template."
    `(with-html-output (*standard-output*)
	 (:div :class "progress"
	       (:div :class (concatenate 'string "progress-bar "
					 (if ,striped (format nil "progress-bar-striped "))
					 (if ,type (format nil "progress-bar-~a" ,type)))
		     :role "progress-bar" :aria-valuenow ,aria-valuenow
		     :aria-valuemin ,aria-valuemin :aria-valuemax ,aria-valuemax
		     :style (format nil "width: ~a;" ,fill)
		     (:span ,@body)))))

;; EOF
