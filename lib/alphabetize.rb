require "pry"

def alphabetize(arr)
  # code here
  ea = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  eaArray = ea.split("")
  counter = 0
  arr.each{|a| arr.each{|b| (a[counter]<=>b[counter])==0 ? counter+=1 : counter}
  counter-=1
  }
  #binding.pry
  arr.sort_by{|x| eaArray.index(x[counter])}
  
end