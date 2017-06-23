20.times do |i|
  lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed bibendum consequat magna, ut venenatis mauris blandit sit amet. Praesent tincidunt tellus turpis, at tempus sem blandit a. Phasellus eu dui at urna gravida gravida id et risus. Integer nec est ut diam commodo auctor. Nullam vel orci at eros sodales scelerisque ut at magna. Maecenas tincidunt dolor at accumsan scelerisque. Aenean placerat sapien at neque sagittis, a congue mi luctus. Curabitur non nulla et augue suscipit dignissim in quis odio. Sed id mauris feugiat orci pellentesque lobortis. Sed quam ligula, semper quis magna ac, rutrum egestas dui. Vivamus ultrices faucibus lacus aliquet lobortis. Curabitur auctor ipsum a diam egestas mollis. Ut dolor justo, consequat a urna et, rutrum mattis nulla. Vivamus elementum, quam nec euismod vehicula, purus turpis cursus mauris, vel mattis nibh erat sit amet tellus. Nunc sit amet aliquam libero. Donec vitae magna nec ipsum rutrum maximus."
  Box.create(title: "Box # #{i}",
              content: lorem,
              processed: false)
end
