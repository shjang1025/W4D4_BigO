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

    ana_2.each do |char|

    if ana_2.find_index(ana_1) != nil

    # "elvis".split("")
    # => ["e", "l", "v", "i", "s"]

    # "lives".split("")
    # => ["l", "i", "v", "e", "s"]
end