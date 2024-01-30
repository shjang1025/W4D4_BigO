#Phase I
def first_anagram?(str1, str2)
    ana_1 = str1.split("")
    ana_2 = str2.split("")

    ana_1.permutation.to_a.any? {|sub_arr| sub_arr == ana_2}
end

#Phase 2
def second_anagram?(str1, str2)
  ana_1 = str1.split("")
  ana_2 = str2.split("")

  ana_1.each do |char|
    if ana_2.index(char) == nil
      return false
    else
      i = ana_2.index(char)
      ana_2.delete_at(i)
    end
  end
  ana_2.empty?
end
 

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  str1.each_char {|char| hash1[char] += 1}
  str2.each_char {|char| hash1[char] -= 1}
  hash1.values.all?(0)
end
