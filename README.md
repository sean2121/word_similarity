# word_similariry 
Between two strings comparison based on cosine similarirty. 

# definition
https://en.wikipedia.org/wiki/Cosine_similarity

# usage 
```ruby
CosineSimilarity.new("Tokyo Station", "Tokyo Station", 2).calc
#=> 1.0 It’s obvious!
```
```ruby
CosineSimilarity.new("Tokyo Airport", "Tokyo Station", 2).calc
#=> 0.42
```

