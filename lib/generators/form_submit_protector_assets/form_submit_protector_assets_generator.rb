require 'rails/generators'

class FormSubmitProtectorAssetsGenerator < Rails::Generators::Base
  def self.source_root
    File.join( File.dirname(__FILE__), 'templates' )
  end
  
  def install_already_grid_assets
    copy_file "guilded.form_submit_protector.js", "public/javascripts/guilded.form_submit_protector.js"
    copy_file "guilded.form_submit_protector.min.js", "public/javascripts/guilded.form_submit_protector.min.js"
    copy_file "jquery-disable_on_submit-1.0.js", "public/javascripts/jquery/jquery-disable_on_submit-1.0.js"
    copy_file "jquery-disable_on_submit-1.0.min.js", "public/javascripts/jquery/jquery-disable_on_submit-1.0.min.js"
  end
end