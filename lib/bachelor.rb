

def get_first_name_of_season_winner(data, season)
  data.each do |key,value|
   if   key == season
     value.each do |ele|
       if ele["status"] == "Winner"
         name = ele["name"].split
        return  name[0]
       end

     end

   end

  end

end

def get_contestant_name(data, occupation)
  data.each do |key,value|
    value.each do |ele|
      if ele["occupation"] == occupation
        return ele["name"]
      end
    end

  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |key,value|
    value.each do |ele|
    count+=1  if ele["hometown"] == hometown

    end
  end
   count
end

def get_occupation(data, hometown)
  data.each do |key,value|
    value.each do |ele|
    return ele["occupation"]  if ele["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
arr =[]
sum = 0
   data.each do |key,value|
     if key = season
     value.each do |ele|
       arr << ele["age"].to_i
     end
   end
   end
 arr.each {|num| sum += num}
avg = (sum)/(arr.length)
return avg
end
