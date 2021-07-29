(ffi:require js:react "react")
(ffi:require js:react-dom "react-dom")

(in-package :portal-plurality)

(define-react-component <app> ()
  (jsx (:h1 () "")))

(defparameter player (find-by-name "PLAYER"))
(add-component player "script")

(js-setf (player rigidbody mass) 1
         (player rigidbody angular-factor) (ffi:ref js:pc -vec3 -z-e-r-o)
         (player rigidbody restitution) 0.1)


(add-scripts player '("charcontroller" 
                      "firstpersoncamera" 
                      "keyboardinput" 
                      "mouseinput" 
                      "reset"))

(setup '<app> "root" :remote-eval t)
