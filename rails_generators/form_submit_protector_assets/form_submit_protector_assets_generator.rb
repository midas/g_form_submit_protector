class FormSubmitProtectorAssetsGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    super
  end

  def manifest
    record do |m|
      m.file "guilded.form_submit_protector.js", "public/javascripts/guilded.form_submit_protector.js"
      m.file "guilded.form_submit_protector.min.js", "public/javascripts/guilded.form_submit_protector.min.js"
      m.directory "public/javascripts/jquery"
      m.file "jquery-disable_on_submit-1.0.js", "public/javascripts/jquery/jquery-disable_on_submit-1.0.js"
      m.file "jquery-disable_on_submit-1.0.min.js", "public/javascripts/jquery/jquery-disable_on_submit-1.0.min.js"
    end
  end
end