namespace :populate_sys_param8 do
	desc "Communication_Messages"
	task :communication_messages => :environment do
		systemParamCategories = SystemParamCategory.create(description:"Communication Messages",created_by: 1,updated_by: 1)
		SystemParam.create(system_param_categories_id:systemParamCategories.id,key:"PRA_PRESCREENING",value:"PRA_PRESCREENING",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non lectus sodales, molestie dui quis, laoreet enim. Aliquam vitae metus metus. Vestibulum euismod odio id metus commodo, et euismod lorem vulputate. Maecenas consectetur, ex non efficitur ultrices, est erat blandit nisl, pellentesque varius purus sapien ac nisi. Suspendisse feugiat tellus quis orci aliquet, non accumsan mi pulvinar. Mauris condimentum tincidunt lacus ornare tincidunt. Duis a efficitur ipsum. Proin velit ligula, dictum ac tempus at, sagittis nec nisi. Integer facilisis dui quis elit rhoncus, dignissim iaculis ligula cursus. Curabitur lacinia convallis urna, a lobortis turpis porta at. Nullam condimentum justo vel commodo aliquam.

Fusce in nibh nisi. Morbi volutpat sagittis eros dapibus elementum. Vivamus tristique ligula eros. Fusce urna dui, semper suscipit augue vitae, fermentum lacinia ex. Aliquam efficitur lectus non ullamcorper fringilla. Cras vehicula, erat id dictum blandit, felis libero vehicula enim, eget vestibulum libero neque vitae ante. Cras suscipit sit amet odio elementum condimentum. Aliquam erat volutpat. Aenean sed bibendum felis. Praesent luctus purus dui, sit amet condimentum sem venenatis a. Etiam iaculis pretium orci. Fusce a erat quis eros mollis varius et sit amet est. Pellentesque at euismod tortor. Vestibulum facilisis mi non nisl luctus sodales. Suspendisse pellentesque dignissim imperdiet. Maecenas mollis massa in nunc aliquam, ut aliquet nisi porttitor.

Suspendisse potenti. Ut quis mauris congue turpis ornare laoreet. Sed a dolor eu lorem blandit ultricies. Vivamus consequat tincidunt sagittis. Curabitur mollis aliquam est euismod vehicula. Curabitur elementum, orci non accumsan rhoncus, risus metus maximus purus, a mattis libero enim at urna. Vivamus efficitur, ex ac elementum venenatis, lectus dui porttitor urna, nec pharetra risus nisi sit amet erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc euismod aliquam maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac nibh eget lectus sagittis congue. Fusce venenatis augue eget sem imperdiet tristique. Vestibulum tempus, ligula id rutrum vulputate, velit odio volutpat urna, quis malesuada odio urna quis sapien.

Sed ultrices commodo efficitur. Nullam ut fringilla neque, consectetur pharetra nibh. Ut congue dapibus magna. Phasellus eu sem sed nisl semper consequat. Suspendisse et ex ut turpis fringilla porttitor non quis dui. Quisque dignissim imperdiet lacus sit amet pulvinar. Vivamus eget felis sagittis, pretium nisl non, consectetur leo. Sed iaculis malesuada orci.

Mauris rhoncus viverra sapien. Aliquam tristique diam ipsum, vitae luctus velit fermentum a. Quisque lacinia ullamcorper libero, ut scelerisque felis euismod sed. Vestibulum urna risus, euismod nec condimentum imperdiet, blandit ac nisl. Nunc at aliquam leo, eget volutpat tortor. Donec luctus diam ut eleifend pellentesque. Aenean congue nulla id ante vehicula porttitor. Nunc non rhoncus enim. Vivamus a suscipit massa, eu hendrerit lectus. Donec sit amet lorem sed quam auctor euismod id sit amet odio. In faucibus tortor ex, id ullamcorper urna rhoncus in. Pellentesque cursus tempor maximus. Aenean id odio quis neque ultrices vestibulum at sed dui. Nullam semper, dolor at dignissim congue, lacus nisl congue orci, eget auctor neque ex vel lacus. Donec malesuada tempor mauris, at tincidunt tellus sodales ultricies. ",
created_by: 1,updated_by: 1
)
	end

end