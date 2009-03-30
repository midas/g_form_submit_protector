/* Guilded Form Submit Protector 1.0.0
 * Copyright (c) 2009 C. Jason Harrelson (midas)
 * Guilded Form Submit Protector is licensed under the terms of the MIT License */

g.formSubmitProtectorInit = function( options )
{
	if( !options )
		options = {};
		
	if( g.beforeFormSubmitProtectorInit )
	{
		g.beforeFormSubmitProtectorInit( options );
	}
	
	if( g.doFormSubmitProtector )
		options['should_inactivate'] = g.doFormSubmitProtector;
	
	$jc( options.form_class ).disableOnSubmit( options );

	if( g.afterFormSubmitProtectorInit )
	{
		g.afterFormSubmitProtectorInit( options );
	}
};