class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing :all => :comments
  #if we have any domain then we can add this 
  #
  #routing /@codingninjas.in/i => :inbox
end
