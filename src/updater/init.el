;; Config updater

(defvar checkout-period 302400
  "Update checkout period is 3 days")

(defvar last-update-file (format "%s/last-update" (file-name-directory load-file-name)))

(defun updater--get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))

(defun conf:update (result)
  (interactive (list (y-or-n-p "Would you like to check for config update?")))
  (if result
      (progn
	(message "Updating..")
	(compile (format "cd %s/.. && ./util/update.sh && cd - > /dev/null"
			 conf:root-path)))
    (message "You can run conf:update if you which to update later.")))

(defun updater--write-new-time ()
  (with-temp-file last-update-file
    (insert (car (split-string (number-to-string (float-time)) "\\.")))))

(defun conf:verify-update ()
  (if (not (file-exists-p last-update-file))
      (updater--write-new-time)
    (progn
      (let ((old-time (string-to-number (updater--get-string-from-file last-update-file)))
	    (current-time (float-time)))
	(if (> (- current-time old-time) checkout-period)
	    (progn (call-interactively 'conf:update)
		   (updater--write-new-time)))
	))))

;; (conf:verify-update)
