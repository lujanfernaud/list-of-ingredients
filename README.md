# React on Rails: List of Ingredients

*Rails 5 API + ActiveAdmin + Create React App on Heroku*

App built following [Charlie Gleason's tutorial](https://blog.heroku.com/a-rock-solid-modern-web-stack).

## Main Steps

### 1. Prepare Rails app to work in API mode serving HTML for ActiveAdmin
  - Create Rails app in API mode
  - Make `ApplicationController` inherit from `ActionController::Base`
  - Add `ApiController` (our controllers will inherit from this one)
  - Add middleware config for `Flash`, `Cookies` and `CookieStore` to `application.rb` [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/7483d9081f2702f47f72bf08d29b0340f14a268c)
  - Add Devise and ActiveAdmin gems, and install

### 2. Create React app
  - `create-react-app client`
  - Add config to `package.json` to proxy API calls to Rails backend [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/26830899f6c279ac9df9d7d6f5c9a42b0aa765e0)

### 3. Add data to backend
  - Create Rails models and relationships
  - Generate ActiveAdmin resources and permit params
  - Set up Rails routes
  - Seed database
  - Limit retrieved data in controllers (only retrieve what we need for the frontend)

### 4. Create Procfile.dev to run servers locally (this is really nice)
  - Add `web:` command to start React [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/40ea83d523acee3bb9afb90920a8e2e72f393959)
  - Add `api:` command to start Rails [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/40ea83d523acee3bb9afb90920a8e2e72f393959)
  - Run Procfile locally with: `heroku local -f Procfile.dev`
  - Create Rake task to run Procfile.dev [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/e6a0089d7623e77d033978465a0d079cee567090)

### 5. Implement React app
  - Normal React app implementation

### 6. Prepare app for production
  - Add `package.json` to the root folder to tell Heroku how to compile React [(see)](package.json)
  - Use `heroku-postbuild` command to run scripts

### 7. Deploy to Heroku
  - Add `config/secrets.yml` with `secret_key_base` required by Devise
  - Use [Heroku buildpacks](https://devcenter.heroku.com/articles/buildpacks) to run two build processes in a specific order (Node first)

### 8. Add React Router
  - Tell Rails to pass any HTML requests that it doesn't catch to React [(see)](https://github.com/lujanfernaud/react-rails-ingredients/commit/4fa7cdd8d3be794b13a7db28597f8b74b300ab0b)
  - Implement React Router
