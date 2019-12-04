USER STORIES
(meta: we have them because we were told to)

Purpose: to declare and focus a manageable chunk of work
Purpose: to ensure that all concerned parties agree on how the work is defined


As a user, I want to see how many visits each explorer has made
* sorted by most visits
<!-- explorer.visits.count -->

As a user, I want to see which planets an explorer has not visited

As a user, I want to see which explorers never went to a given planet

As a user, I want to provide a planet name and see all that planet's explorers

TODO: As a user, I want to create an explorer

TODO: As a user, I want to delete a visit

SLICING

Horizontal - all the migrations, THEN all the models/associations, THEN all the model methods, THEN the whole CLI interface

Vertical - PER FEATURE, build necessary migrations, models, methods, interface,
THEN move to NEXT FEATURE

Q/A

Handling user authorization, conditional display
Validating saved data (later mod things)
Pulling data from APIs, selecting whether appropriate for this CLI context
