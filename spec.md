# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x user has_many prescriptions ) 
- [ ] Include at least one belongs_to relationship (x Prescription belongs_to , user Prescription belongs_to medication)
- [x] Include at least two has_many through relationships (xUser has_many medications through prescriptions, Medication has_many users through prescriptions )
- [x] Include at least one many-to-many relationship (x has_may medications through prescriptions )
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (the user can see how many other users are on a specific medication)
- [x] Include reasonable validations for simple model objects (user, prescriptions )
- [x] Include a class level ActiveRecord scope method (class scope for medication list being in alphabetical order )
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (OmniAuth)
- [x] Include nested resource show or index (prescriptions)
- [x] Include nested resource "new" form (prescriptions/refill/new )
- [x] Include form display of validation errors (signin, signup, new refill, new prescription, presscription edit)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [ ] Views use partials if appropriate