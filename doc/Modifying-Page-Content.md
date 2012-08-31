## Through web view
To modify the page content through the browser login to /admin
Edit the different State Information
Ethnicities
State Guidelines
State Instructions

## Rake tasks
You can modify the different state specific information through different rake tasks

All
`bundle exec rake load_states:all` this should only be run once during the initial setup

State Deadlines - this updates the state deadlines
Modify the file `/data/state_deadlines.json`
`bundle exec rake load_states:deadlines` this is an update statement

State Instructions - this adds the state instructions, currently and insert not an update
Modify the file `/data/instructions.yml`
`bundle exec rake load_states:instructions` this is currently an insert statement

State Guidelines - this adds the state guidelines information, currently an insert statement
Modify the file `/data/state_info_en.yml`
`bundle exec rake load_states:instructions` defaults to the above file
You can pass in arguments to load in different files an locales
`bundle exec rake load_states:instructions[state_info_es.yml,es]`
