# ArchivesSpace RAD (reparative archival description) scripts

This repository contains Ruby scripts to facilitate reparative archival description in ArchivesSpace.

Currently there is just one script, which takes a text file containing terms (one per line) and finds those terms in notes included in ArchivesSpace records. 
It generates a CSV file listing those records and the note content so that they can be reviewed and updated if needed.

# Usage

1. Make sure you have Ruby installed.
2. Install the bundler gem with `gem install bundler`
3. Make a copy of `as_config_production_default.rb` and save it as `as_config_production.rb`
4. Modify the following lines in that file:

    a. `@username = 'YOUR USER NAME'` - change to your ArchivesSpace user name
    
    b. `@password = 'YOUR PASSWORD'` - change to your ArchivesSpace password

5. Install the dependencies with:

     `bundle install`

6. Run the script:

     `ruby find_terms_in_notes.rb`

This should search notes fields for all terms included in `search_terms.txt` and generate a report (in `csv`)
