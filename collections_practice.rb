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
  h1.collect do |h|
    h.merge(h2[0][h[:first_name]])
  end
end

def find_cool(data)
  arr = []
  data.each do |h|
    if h[:temperature] == "cool"
      arr << h
    end
  end
  arr
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |k, v|
    if !new_hash.key?(v[:location])
      new_hash[v[:location]] = []
    end
  end
  new_hash.each do |location,arr|
    schools.select {|school, obj| obj[:location] == location}.keys.each do |t|
        arr << t
      end
  end
  new_hash
end

#count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
#merge_data([{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}], [{"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}, "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}}])
#find_cool([{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}])
organize_schools({"Hack Reactor"=>{:location=>"SF"}, "dev boot camp"=>{:location=>"SF"}, "dev boot camp chicago"=>{:location=>"NYC"}, "flatiron school bk"=>{:location=>"NYC"}, "general assembly"=>{:location=>"NYC"}})