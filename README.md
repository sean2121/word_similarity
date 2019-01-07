# word_similariry 
Simple mathematical comparison program between two strings based on cosine similarirty. 


# usage 
CosineSimilarity.new("Tokyo Station", "Tokyo Station", 2).calc
#=> 1.0 It’s obvious!
CosineSimilarity.new("Tokyo Airport", "Tokyo Station", 2).calc
#=> 0.42

