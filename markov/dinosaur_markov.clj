(use 'clojure-string)

(defn clean [corpus]
  (lower-case
    (replace 
      (replace corpus #"[^A-Za-z ]" "")
      #"\s+" " ")))

(defn each-pair [coll]
  (partition 2 1 coll))

(defn map-count [map key]
  (assoc map key 
         (inc (get map key 0))))

(defn build-pairs-table [corpus]
  (sort-by 
    #(first (rest %1))
    (reduce map-count {}
          (each-pair (split (clean corpus) #"\s+")))))
