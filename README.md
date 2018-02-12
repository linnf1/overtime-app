# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week
Models

X Post -> date:date rationale:text
X User -> Devise
X AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
X Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Block non-admin and guest users from Admin Dashboard

## UI:
X Bootstrap -> formatting
- Icons from Font Awesome
X Update styles in forms

##Refactor TODOS:
X Add full_name method for users
- Refactor user association integration test in post_spec
- Refactor form posts/_form for admin user with status
- Fix post_spec to have correct user reference and not require update

Test
sudo service postgresql start
rails s -b $IP -p $PORT
