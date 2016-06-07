def any_arrows(arrows)

	def any_arrows(arrows)
  if arrows.empty?   #Should handle empty quiver
    return false
   end
   
	arrows.each do |arrow|
		if arrow[:damaged]==true  #Should handle quiver with damaged arrows
			return false   
		end
   end
    
    arrows.each do |arrow|
    if arrow[:damaged]!=true #Should handle quiver with undamaged arrows
      return true
    end
   end
    
end

any_arrows([{range: 5}, {range: 10, damaged: true}, {range: true}])


# Test.assert_equals(any_arrows([]), false, "Should handle empty quiver")
# Test.assert_equals(any_arrows([{'range'=> 5}, {'range'=> 10, 'damaged'=> true}, {'damaged'=> true}]), true, "Should handle quiver with undamaged arrows")
# Test.assert_equals(any_arrows([{'range'=> 10, 'damaged'=> true}, {'damaged'=> true}]), false, "Should handle quiver with damaged arrows")