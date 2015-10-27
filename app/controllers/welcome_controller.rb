class WelcomeController < ApplicationController
  def index
    render :text => "Welcome!"
  end

  def name
    render :text => "Welcome " + params[:name]
  end
  def ipsum
   if params[:name].blank?
     text = "Ain't nobody here"
   elsif params[:name].downcase == "gangster"
     text = "Maecenizzle mah nizzle mi. Nam bling bling. Pimpin’ condimentizzle, check out this nizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle consectetuer, things libero doggy purus, fo shizzle mah nizzle fo rizzle, mah home g-dizzle shizznit the bizzle mah nizzle nizzle quam. Get down get down faucibizzle elit. Break it down nibh break yo neck, yall, yo mamma sizzle, fo shizzle my nizzle volutpizzle, mammasay mammasa mamma oo sa ac, yo. Prizzle sed urna. Gangsta ass the bizzle izzle fo shizzle. Pellentesque hendrerit euismizzle felizzle. Donec bling bling nisl shit erat. Etiam posuere yo mi. Ut maurizzle. Sed nisl metus, euismizzle ac, hizzle , i’m in the shizzle cool, nisi. Vivamus vulputate fo shizzle nisl."
   elsif params[:name].downcase == "hipster"
     text = "PBR Neutra mumblecore post-ironic, paleo food truck seitan 8-bit Brooklyn try-hard yr. Actually whatever McSweeney's quinoa paleo, Schlitz fixie Shoreditch Tumblr cornhole. Pinterest raw denim McSweeney's, pour-over brunch +1 tilde plaid beard sustainable flannel. Typewriter Echo Park messenger bag kogi Thundercats, tote bag church-key narwhal deep v biodiesel cred. Kale chips leggings fanny pack dreamcatcher master cleanse. Typewriter twee artisan Brooklyn taxidermy. Biodiesel Williamsburg single-origin coffee, distillery Helvetica before they sold out normcore umami."
   elsif params[:name].downcase == "normal"
     text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
   else
     text = "Hi Chris!"
   end
   render :text => text
 end

end
