# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

event = Event.create([
  {
    event_name: 'Sample Event',
    event_date: '10-08-2021',
    description: 'Social event',
    event_start_time: '12:40 pm',
    event_end_time: '1:40 pm',
    img_url: '/../../srcs/Flyer1.png'
  },
  {
    event_name: 'Sample Event 2',
    event_date: '12-12-2021',
    description: 'Corporate event',
    event_start_time: '1:30 pm',
    event_end_time: '2:00 pm',
    img_url: 'https://mycehd.tamu.edu/wp-content/uploads/2019/04/Screen-Shot-2019-04-02-at-1.56.21-PM.png'
  }
])


usr = User.create([
  {
    name: "James Streets",
    email: "abs@gmail.com"
  }
])

blogpost = BlogPost.create([
  {
    canComment: true,
    description: 'Hello world post',
    link: "Blank",
    title: "Blog Post 1",
    user: usr.first
  }
])

rsvp = Rsvp.create([
  {
    event_name: event.first.event_name,
    event_date: event.first.event_date,
    name: 'James',
    email: 'abc@gamil.com',
    event: event.first
  }
])
