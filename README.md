# Overtime App

**_Key requirement: company needs documentation that salaried employees did or did not get overtime each week_**
***

## Models:

> Post -> date:date rationale:text
> User -> Devise
> AdminUser -> STI
- Auditlog

## Features:
> Administrate admin dashboard
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Block non-admins and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Block non-admin and guest users from Admin Dashboard

## UI:
> Bootstrap -> formatting
> Icons from Font Awesome
> Update styles in forms

## Refactor:
> Add full_name method for users
> Refactor user association integration test in post_spec
- Refactor form posts/_form for admin user with status
- Fix post_spec to have correct user reference and not require update




```
Key:
>| Something finished
o Something not yet finished
```