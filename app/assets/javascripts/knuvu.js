(function($, window, document, navigator, global) {
    var knuvu = knuvu ? knuvu : {
      settings: {
      	init: function(){
      		// Initializing our JS Library Settings
      	}
      },
      init: function(){
      	knuvu.settings.init();
      }
    };
    global.knuvu = knuvu;
})(jQuery, window, document, navigator, this);

jQuery(function($){
	$(document).ready(function(){
		knuvu.init();
	});
});
