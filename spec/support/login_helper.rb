def login(email, password)
  visit '/users/sign_in'
  fill_in :user_email, with: email
  fill_in :user_password, with: password
  click_button 'commit'
end
