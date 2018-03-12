# README
This is a basic rails app made for a coding challenge for CareDash. 

Setup
====
This version of the project requires only a sqlite3 database.  After cloning this repo, install all gems with the `bundle install` on the command line.  To set up the database and populate it with realistic sample records, run on the command line `rake db:populate`.  The populate script will remove any old databases, create new development and test databases, run all the migrations to set up the structure and shouldn't take more than a few seconds. 

Finally, run `rails server` to see the app. 

Caveats
====
Due to the time limitations, some design aspects could not be enriched.

Scalibiltiy 
====
The application can be scaled vertically by adding more RAM and horizontally using different servers. 

Design Considerations
====
The design schema was to keep the application simple and intuitive. The home page was loosely based on the wireframe provided, inlcuding the functionalities that could be implemented in the given time. 


