/*
 * jQuery Disable On Submit Plugin
 * http://www.evanbot.com/article/jquery-disable-on-submit-plugin/13
 *
 * Copyright (c) 2009 Evan Byrne (http://www.evanbot.com)     
 */
(function($){
	
jQuery.fn.disableOnSubmit = function( /* Object literal */ options )
{
	opts = jQuery.extend( jQuery.fn.disableOnSubmit.defaults, options );
	
	if(opts.disable_list == null)
	{
		$list = 'input[type=submit],input[type=button],input[type=reset],button';
	}
	else
	{
		$list = opts.disable_list;
	}
	
	// Makes sure button is enabled at start
	jQuery(this).find($list).removeAttr('disabled');
	 
	jQuery(this).submit(inactivateForm);
	return this;
};

/* *************** public *************** */

jQuery.fn.disableOnSubmit.defaults = 
{ 
  disable_list: 'input[type=submit],input[type=button],input[type=reset],button', /* selector list of elements to disable */
  should_inactivate: function(){ return true; } /* a callback function that returns true or false deciding if the form should be inactivated */
};

/* *************** private *************** */

inactivateForm = function( /* jquery Event */ e )
{
	if( opts.should_inactivate() )
  	jQuery(this).find($list).attr('disabled','disabled');
};

})(jQuery);