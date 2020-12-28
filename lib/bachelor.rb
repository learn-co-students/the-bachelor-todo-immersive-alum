require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  # data[season]
  # binding.pry
  result_hash = data[season].filter{|hash|
    hash["status"] == "Winner"
  }
# binding.pry
  result_hash[0]["name"].split(' ')[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].filter do |hash| 
      if hash["occupation"]== occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  total_count = 0
  data.each do |season|
    season[1].each do |hash|
      if hash["hometown"] == hometown 
        total_count += 1
      end
    end
  end
  return total_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, detail_hash|
    detail_hash.each do |hash|
      if hash['hometown'] == hometown
        return hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  total_age = 0
  # binding.pry
  data[season].each do |detail_hash|
    count += 1
    total_age += (detail_hash['age'].to_i)
  end
  (total_age/count.to_f).round
end
