def find_user_proficiency(user_id, skill_id)
  users_skill = UsersSkill.where(user_id: user_id, skill_id: skill_id).first
  users_skill.proficiency
end

def find_user_years(user_id, skill_id)
  users_skill = UsersSkill.where(user_id: user_id, skill_id: skill_id).first
  users_skill.years
end

def years_array
  1.upto(20).to_a
end


def proficiency_array
  ["beginner", "intermediate", "advanced"]
end