module GFormSubmitProtector
  module ViewHelpers
    
    def g_form_submit_protector( *args )
      return if Guilded::Guilder.instance.include_component?( :form_submit_protector ) # We only need one field highligher per page
      options = args.extract_options!
      throw Guilded::Exception::GuildedException.new( "'form_class' is  a required option" ) unless options.has_key?( :selector )
      options[:selector] = 'form' if options[:selector] == :all
      options.merge! :id => "form-submit-protector"
      options.merge! :exclude_css => true
      Guilded::Guilder.instance.add( :form_submit_protector, options, [ 'jquery/jquery-disable_on_submit-1.0.min.js' ] )
      ''
    end
    
  end
end