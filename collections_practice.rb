require 'pry'

def begins_with_r(words)
  words.all? { |word|
    word.match(/^r/)
  }
end

def contain_a(words)
  arr = []
  words.each do |word|
    if word.include?('a')
      arr << word
    end
  end
  arr
end

def first_wa(words)
  words.each do |word|
    if word.match(/^wa/)
      return word
    end
  end
end

def remove_non_strings(words)
  arr = []
  words.each do |word|
    if word.kind_of?(String)
      arr << word
    end
  end
  arr
end

def count_elements(arr)
  find_dupes = []
  result = []
  
  arr.each do |e|
    find_dupes << arr.index(e)
  end
  
  find_dupes.each_with_index do |pos, i|
    if pos != find_dupes[i - 1]
      result << arr[pos]
      result[result.index(arr[pos])][:count] = 1
    else
      result[result.index(arr[pos])][:count] += 1
    end
  end
  
  result
end

def merge_data(h1, h2)
  h1
end

#count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
merge_data()