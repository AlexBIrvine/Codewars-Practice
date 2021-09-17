(ns longest.core)
(require '[clojure.string :as str])

(defn longest [s1 s2]
  (->>
  (str s1 s2)
  (distinct)
  (sort)
  (str/join)))