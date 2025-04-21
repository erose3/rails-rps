Rails.application.routes.draw do
  
  get("/", {:controller => "move", :action => "rules"}) 

  get("/rock", {:controller => "move", :action => "rock"}) 

  get("/paper", {:controller => "move", :action => "paper"})
  
  get("/scissors", {:controller => "move", :action => "scissors"})


end
