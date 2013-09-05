def find_user_proficiency(user_id, skill_id)
  users_skill = UsersSkill.where(user_id: user_id, skill_id: skill_id).first
  users_skill.proficiency
end

def find_user_years(user_id, skill_id)
  users_skill = UsersSkill.where(user_id: user_id, skill_id: skill_id).first
  users_skill.years
end

def years_dropdown

end


def proficiency_dropdown

end