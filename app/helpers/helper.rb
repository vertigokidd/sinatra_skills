def find_user_proficiency(user_id, skill_id)
  users_skill = UsersSkill.where(user_id: user_id, skill_id: skill_id).first
  users_skill.proficiency
end