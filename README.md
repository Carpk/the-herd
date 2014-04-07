# THE HERD

The Herd is a time management app that assists you in determining if you should advoid going to certain key locations during rush hour.

## Getting Started

Download app and in the app's root directory, run the following commands:

1) `bundle`

2) `rake db:create`

3) `rake db:migrate`

4) `rake db:seed`(optional)

5) `rails server`

Open browser to [http://0.0.0.0:3000/](http://0.0.0.0:3000/) 

## Photo

![wait time graph](https://raw.githubusercontent.com/Carpk/the-herd/master/app/assets/images/Screenshot%20from%202014-04-02%2015:40:06.png)

This is the page after the location selection landing page. This is a graph of wait times though the day, of the previous same day of week. If its Sunday, the graph details of the previous Sundays. I may group wait times every quarter hour to print averages.