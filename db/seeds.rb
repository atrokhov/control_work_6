# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def copy_image_fixture(file_name, id)
  dir = Rails.root.join('public', 'uploads')
  Dir.mkdir(dir) unless File.directory?(dir)
  FileUtils.cp(file_name, dir.join(id.to_s))
end

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

picture = Picture.create(title: "Sprite", user_id: 1, image: File.new(fixtures_path.join('DawnWalkSide_Dict.png')))
copy_image_fixture(fixtures_path.join('DawnWalkSide_Dict.png'), picture.id)

comment = Comment.create(user_id: 2, score_id: 1, text: "Cool sprite!!! I like it!", picture_id: 1)

score = Score.create(score: 5)

user1 = User.create(name: "arthur123", email: "arthur123@example.com", password: "123123", password_confirmation: "123123")

user1 = User.create(name: "arthur3", email: "arthur3@example.com", password: "123123", password_confirmation: "123123")