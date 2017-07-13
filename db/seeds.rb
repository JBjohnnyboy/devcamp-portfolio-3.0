3.times do |topic|
  Topic.create!(
    title: "{topic #{topic}"
    )
end

10.times do |blog|
  Blog.create!(
       title: "Mom's Spaggeti #{blog}",
       body: "Yo
    His palms are sweaty, knees weak, arms are heavy
    There's vomit on his sweater already, mom's spaghetti
    He's nervous, but on the surface he looks calm and ready
    To drop bombs, but he keeps on forgettin'
    What he wrote down, the whole crowd goes so loud
    He opens his mouth, but the words won't come out
    He's chokin', how, everybody's jokin' now
    The clocks run out, times up, over, blaow!
    Snap back to reality, oh there goes gravity
    Oh, there goes Rabbit, he choked
    He's so mad, but he won't give up that easy? No
    He won't have it, he knows his whole back city's ropes
    It don't matter, he's dope, he knows that, but he's broke
    He's so stacked that he knows, when he goes back to his mobile home, that's when its
    Back to the lab again yo, this whole rhapsody
    He better go capture this moment and hope it don't pass him",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: 'Portfolio title: #{portfolio_items',
    subtitle: 'Ruby on Rails',
    body: 'Somebooooooooooooooooooooooooooooooooooooooooooooooddddddddddddddddddddddddddyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy M8',
    main_image: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwifyYzYgtzUAhUI_WMKHXXdD5wQjRwIBw&url=https%3A%2F%2Fbulbapedia.bulbagarden.net%2Fwiki%2FPikachu_(Pok%25C3%25A9mon)&psig=AFQjCNF2OhM7c9-RytBW9gRlQHScMV6w5g&ust=1498584029881533',
    thumb_image:'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwifyYzYgtzUAhUI_WMKHXXdD5wQjRwIBw&url=https%3A%2F%2Fbulbapedia.bulbagarden.net%2Fwiki%2FPikachu_(Pok%25C3%25A9mon)&psig=AFQjCNF2OhM7c9-RytBW9gRlQHScMV6w5g&ust=1498584029881533'
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "asdasdasda",
      main_image: "http://placehold.it/600*400",
      thumb_image: "http://placehold.it/350*200"
    )
  end
puts "9 portfolio items created"
