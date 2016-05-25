#5.4 pairing, worked with Maria Uyeda

arr = ["blue", "green", "red"]
hash = {
    state: "California",
    city: "San Francisco",
    country: "United States"
}

arr.each {|color| puts color}
new_array=arr.map {|color| color.upcase}
p new_array
arr.map! {|color| color.upcase}
p arr

hash.each {|general, example| puts "An example of a #{general} is  #{example}"}

def example
    puts "Hello World"
    yield
end

example {puts "Goodbye World"}


arr_2 = [1, 2, 3, 4, 5]
hash_2 = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5
}

p arr_2.delete_if {|x| x < 3}
p hash_2.delete_if {|x, y| y > 3}
p arr_2
p arr_2.keep_if {|x| x < 5}
p hash_2.keep_if {|x, y| y >= 2}
p arr_2.include?(3)
p hash_2.has_value?(2)
p arr_2.take_while {|x| x < 4}
p hash_2.take_while {|x, y| y < 3}