;; (setv #^ str name "ada lovelace")

;; (print (.title name))
;; (print (.upper name))
;; (print (.lower name))

(setv ^# str first_name "ada")
(setv ^# str last_name "lovelace")
(setv ^# str full_name f"{first_name} {last_name}")

(setv #^ str message f"Hello, {(.title full_name)}")

(print message)
