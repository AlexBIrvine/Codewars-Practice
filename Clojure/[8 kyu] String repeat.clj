(ns clojure.string-repeat)

(defn repeat-str [n strng]
  (clojure.string/join (repeat n strng)))