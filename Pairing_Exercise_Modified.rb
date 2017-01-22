  # First, ascertain how many individuals need to be paired:
  puts "\n"
  print "How many individuals need to be paired?"
  number_of_people=gets.chomp.to_i
  puts "\n"
  puts "So, there are #{number_of_people} to be paired. Okay."
  puts "\n"
  my_array=Array.new(number_of_people)

# Allow user to input the names:
  x=number_of_people
  y=0
  x.times do
    print "Enter a name: "
    name=gets.chomp
    my_array[y]=name
    y=y+1
  end

  puts "\n"
  print "The following people will be paired: "
  print my_array
  puts "\n"
  puts "\n"
  my_array.shuffle!

# Now that the names are shuffled, break them into pairs & list:
  z= (x/2)

  puts "Here's your grouping(s): "
  puts "\n"

  y=0
  i=1
  z.times do
    puts my_array[y]
    puts my_array[i]
    puts "\n"
    y +=2
    i +=2
  end

  # Provide for an extra person:
  if z % 2 == 1
    i=i+2
    print "And "
    print my_array[y]
    print " will have to be added to one of the above groups. "
  end

  puts "And have a nice day! :)"
  puts "\n"
