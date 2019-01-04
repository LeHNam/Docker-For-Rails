# Docker-For-Rails
Create environment for Ruby In Docker , Debug with RubyMine In Windown
## Prerequisites
   * RubyMine
   * Docker ToolBox Or Docker CE (With docker CE change 192.168.99.100 to localhost)
   * Excute Cmd in gitbash
## Install
## Begin 
   1. Clone Docker-For-Rails
       > git clone https://github.com/LeHNam/Docker-For-Rails.git
   2.  Copy all file of Docker-For-Rails to folder project
   3.  In Dockerfile and docker_compose.yml, edit rails_root is project_name
   4.  In docker_compose.yml, edit MYSQL_ROOT_PASSWORD
   5.  In \mysql\init-user-db.sh , edit database_name (database_production,database_development,database_test)
### With new project
   1. In folder project , create a bootstrap Gemfile . It’ll be overwritten in a moment by `rails new`.
      ```
      source 'https://rubygems.org' 
      gem 'rails'
      ```
   2. Create an empty `Gemfile.lock` 
### With exists project
   1. Edit database.yml

![capture](https://user-images.githubusercontent.com/38838516/49878633-a1364400-fe5a-11e8-9836-26164b1ac710.PNG)

### Config Gemfile to debug Rails in RubyMine
1. In Gemfile , additional Gem
      ```
      gem "debase"
      gem "ruby-debug-ide"
      ```
### Build Docker
1. Build image
      ```
      docker-compose build
      ```
2.Docker-compose up
      ```
      docker-compose up -d
      ```
      
3.Check Docker containers
      ```
      docker-compose ps
      ```
### Config rubymine to debug
1. Import project folder with rubymine
2. Create Docker Serve in RubyMine
![image](https://user-images.githubusercontent.com/38838516/49879179-ffaff200-fe5b-11e8-9257-1488802d7196.png)

3. Config DB
![image](https://user-images.githubusercontent.com/38838516/49879328-51587c80-fe5c-11e8-8f0a-3ef57e60c36f.png)

4. Config Ruby SDK And Gems
      ```
      File > Settings > Language & Frameworks > Ruby SDK And Gems > Add > New Remote > Config Docker > Ok to Finish
      ```
      ![image](https://user-images.githubusercontent.com/38838516/49879583-dcd20d80-fe5c-11e8-9815-eb678d3ebf3b.png)

5. Config Debug Server
      ```
      Run > Debug Configurations > Add > Ruby Remote Debug > Config > Ok to Finish
      ```

![image](https://user-images.githubusercontent.com/38838516/49879929-a052e180-fe5d-11e8-94a0-8fab6e0f0fca.png)

6. Connect Docker in Rubymine
![image](https://user-images.githubusercontent.com/38838516/49880693-48b57580-fe5f-11e8-893d-d61cfee7c6d1.png)

7. Connect server In Docker
command: rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- bin/rails server -e development -b 0.0.0.0 -p 3000

8. Start Debug Server
![image](https://user-images.githubusercontent.com/38838516/49879884-83b6a980-fe5d-11e8-90a8-5c7124cecaad.png)

Wait 1 min to start 

![image](https://user-images.githubusercontent.com/38838516/49880747-64b91700-fe5f-11e8-91f7-38aa459e4996.png)

9. Set breakpoint and debug

![image](https://user-images.githubusercontent.com/38838516/49881009-e7da6d00-fe5f-11e8-9b01-44ec08c8ac43.png)

  
      
