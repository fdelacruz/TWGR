class C
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Here's the inspect-string for 'self': "
    p self.object_id
    print "And here's a: "
    p a.object_id
    if recurse
      puts "Recursing by calling myself..."
      x("Second value for a")
      print "Back after recursion; here's a: "
      puts a.object_id
    end
  end
end

c = C.new 
c.x("First value for a", true)
