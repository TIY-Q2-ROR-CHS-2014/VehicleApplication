- Get Twitter Bootstrap Rails gem
- Bundle install
- rails generate bootstrap:install static
- Get the template you want
- Copy the HTML (convert to haml - fix tabs) and put it in application
- Put stylesheet_link_tag and js include tags back in layouts>application html
- Pull over custom styles from JS template
- Add it to a new CSS file
- Add that CSS file to application.css require chain

#### Asset Pipeline

- //= require_tree .
  - This requires all of the files
- //= require_directory .
  - This will only require the directory you are in
  - For example: welcome#index
  - Will only require the files for the welcome controller

