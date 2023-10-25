# ❌ XamComiX Apps

<div align="center">
  <img src="app/assets/images/xamcomix.gif" alt="app gif">
</div>

## ❓ About this app
<p>
  <strong>XamComiX</strong> is an app created by team <em>Uncle Sam</em> with Sam Ferrer and Xam Abados. 2021-2023 Business Information Technology students of Red River College Polytechnic for their Full-Stack Web Development class - Intro to Rails project.
</p>
<p>
  The application's data source is Xam’s comic book collection through the years
  where he listed down each <em>comic book</em>, its <em>writers</em>,
  <em>editions</em>, <em>formats</em>, and its <em>publishing company</em>
  in an excel file and later on exported it into CSV files.
</p>

## 💻 Recreate this app
* Clone this repository
* Open terminal and run...
  - bundle install
  - rails db:migrate
  - rails db:seed
  - rails s -p <em>[port number]</em>
    - (choose a specific port number, otherwise just run 'rails s')

## 💎 Versions/Gem used by this app
* Rails version: 7.0.8
* Ruby  version: 3.1.2
* Added Gem: kaminari (pagination)
