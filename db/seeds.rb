require 'faker'

files = %w[dock deer girl tetons]

100.times do
  @post = ImagePost.new(username: Faker::Internet.username)
  @post.save
  file = files.sample
  @post.image.attach(io: File.open("./public/photos/#{file}.jpg"),
                     filename: file)
end