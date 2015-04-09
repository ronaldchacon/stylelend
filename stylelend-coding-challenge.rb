def fit_within_box(array)
  max_height = 200.0
  max_width = 200.0
  aspect_ratio = 0
  new_array = []

  array.each_slice(2).to_a.each do |width,height|
    # in order to find aspect ratio based on a max height or width I need to take the smallest of the two. max width / width or max height / height
    aspect_ratio = ([[max_width / width], [max_height / height]]).min.join('').to_f
    new_array << width = (width * aspect_ratio).floor
    new_array << height = (height * aspect_ratio).floor
  end
  new_array
end

p fit_within_box([200,200])
p fit_within_box([200,200]) == [200,200]

puts '*' * 50

p fit_within_box([400,200])
p fit_within_box([400,200]) == [200,100]

puts '*' * 50

p fit_within_box([1256,1200, 600, 800, 200, 200, 400, 200, 800,1256])
p fit_within_box([1256,1200, 600, 800, 200, 200, 400, 200, 800,1256]) == [200, 191, 150, 200, 200, 200, 200, 100, 127, 200]
