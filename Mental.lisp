; Macro that load the expert system
(defmacro expertsystem ()
  `(progn
     (format t " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@~%")
     (format t "\    Please answer the following      /~%")
     (format t "\   question that Expert System       /~%")
     (format t "\ will ask you to know your Mental    /~%")
     (format t "\     disorder status. Thank you!!!   /~%")
     (format t "\    Please respond by typing in      /~%")
     (format t "\             'y' or 'n'              /~%")
     (format t " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@~%~%")
     (mental-disorder-diagnosis)))


;Function showing author's information
(defun diagnose ()
  (format t " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@~%")
  (format t "\             Welcome to                  /~%")
  (format t "\   Swetha Suresh Kumar (324353)'s        /~%")
  (format t "\    Mental disorder Diagnosis            /~%")
  (format t "\   Expert System Implementation          /~%")
  (format t "\     Please respond by typing in         /~%")
  (format t "\             'y' or 'n'                  /~%")
  (format t " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@~%~%")
  (info))


;Function that check user's activity in the system
(defun info ()
  (if (initialcheck)
    (expertsystem)))


;Function that probes user
(defun initialcheck ()
  (question-ask-2 "Welcome, Do you want to check for a mental disorder? "))


(defun mental-disorder-diagnosis ()
  (let ((anorexia 0) (bulimia 0) (asperger 0) (dyslexia 0) (autism 0) (tourette 0) (bipolar 0) (schizophrenia 0) (down 0) (fragileX 0))
    (if (ask-question "Do you restrict food amount? ") (setf anorexia (1+ anorexia)))
    (if (ask-question "Do you purge after eating? ") (setf bulimia (1+ bulimia)))
    (if (ask-question "Do you have low social skills? ") (setf asperger (1+ asperger)) )

    (if (ask-question "Do you have difficulty reading or writing? ") (setf dyslexia (1+ dyslexia)))
    (if (ask-question "Do you have impaired communication? ") (setf autism (1+ autism)))
    (if (ask-question "Do you have motor tics? ") (setf tourette (1+ tourette)))
    (if (ask-question "Do you have elevated moods? ") (setf bipolar (1+ bipolar)))
    (if (ask-question "Do you have hallucinations? ") (setf schizophrenia (1+ schizophrenia)))
    (if (ask-question "Do you have delayed physical growth? ") (setf down (1+ down)))
    (if (ask-question "Do you have small chin and slanted eyes? ") (setf fragileX (1+ fragileX)))
(terpri)
   (cond
  ((> anorexia 0) (format t "Anorexia nervosa"))
  ((> bulimia 0) (format t "Bulimia Nervosa"))
  ((> asperger 0) (format t "Asperger syndrome"))
  ((> dyslexia 0) (format t "Dyslexia"))
  ((> autism 0) (format t "Autism"))
  ((> tourette 0) (format t "Tourette syndrome"))
  ((> bipolar 0) (format t "Bipolar disorder"))
  ((> schizophrenia 0) (format t "Schizophrenia"))
  ((> down 0) (format t "Down syndrome"))
  ((> fragileX 0) (format t "Fragile X syndrome"))
  (t (format t "No matching disorder found."))
)
    (format t " Mental disorder. Please consult a medical professional for a proper diagnosis and treatment plan.")
    ))


; Macro that allows users to respond with yes or no to symptoms question
(defmacro ask-question (question)
  `(progn
     (format t ,question)
     (let ((reply (read)))
       (string= reply "Y"))))

; Function that allows users to respond with yes or no to whether they want to use the system or not
(defun question-ask-2 (question)
  (format t "~b" question)
  (let ((reply (read)))
    (format t "~%")
    (string= reply "Y")))

; Initiating loading the whole program
(diagnose)