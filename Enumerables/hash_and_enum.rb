bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick another],
  blondie: %w[debbie chris clem jimmy],
  talking_heads: %w[david tina chris jerry]
}

bands.each{ |pair| p pair }

puts "--BREAK--"

bands.each_pair{ |pair| p pair }

puts "--BREAK--"

bands.reduce("DOOP DOOP") do |memo, (key, value)|
  p memo # First block parameter
  p key # Second block parameter
  p value # Second block parameter
  memo # Return value for the block. It becomes the memo in the next go-round
end

puts "--BREAK--"

def rearranging_hashes(bands) ## THIS DOESN'T WORK LIKE I WANT IT TO
  new_hash = {"singer" => {}, "guitar" => {}, "bass" => {}, "drum" => {}}
  bands.each do |memo, (band_name, members, others, leftovers)|
    p memo
    new_hash["singer"] = members
    new_hash["guitar"] = band_name
    new_hash["bass"] = others
    new_hash["drum"] = leftovers
    memo
  end
  p new_hash
end

rearranging_hashes(bands)