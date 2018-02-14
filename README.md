# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

> Post -> date:date rationale:text
> User -> Devise
> AdminUser -> STI
- Auditlog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
> Administrate admin dashboard
- Block non-admins and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Block non-admin and guest users from Admin Dashboard

## UI:
> Bootstrap -> formatting
> Icons from Font Awesome
> Update styles in forms

##Refactor TODOS:
> Add full_name method for users
> Refactor user association integration test in post_spec
- Refactor form posts/_form for admin user with status
- Fix post_spec to have correct user reference and not require update

## Notes
Test
sudo service postgresql start
rails s -b $IP -p $PORT
