# word_similariry 
Simple mathematical comparison program between two strings based on cosine similarirty. 

# definition
https://wikimedia.org/api/rest_v1/media/math/render/svg/1d94e5903f7936d3c131e040ef2c51b473dd071d

# usage 
```ruby
CosineSimilarity.new("Tokyo Station", "Tokyo Station", 2).calc
#=> 1.0 It’s obvious!
```
```ruby
CosineSimilarity.new("Tokyo Airport", "Tokyo Station", 2).calc
#=> 0.42
```

