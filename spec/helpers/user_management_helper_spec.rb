def sign_up(
            user_name: '@Barney',
            first_name: 'Barney',
            last_name: 'Test',
            email: 'barney@barney.com',
            password: '456789',
            password_confirmation: '456789')
  visit '/users/sign_up'
  fill_in 'user_user_name', with: user_name
  fill_in 'user_first_name', with: first_name
  fill_in 'user_last_name', with: last_name
  fill_in 'user_email' , with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password_confirmation
  click_button 'Sign up'
end

def sign_in(email: 'barney@barney.com',
            password: '456789')
  visit '/users/sign_in'
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  click_button 'Log in'
end
