require 'spec_helper'
require 'generators/form_submit_protector_assets/form_submit_protector_assets_generator'

describe FormSubmitProtectorAssetsGenerator do
  before :each do
    @destination = File.join 'tmp', 'test_app'
    @source = FormSubmitProtectorAssetsGenerator.source_root
    FormSubmitProtectorAssetsGenerator.start '', :destination_root => @destination
  end
  
  after :each do
    FileUtils.rm_rf @destination
  end
  
  {"guilded.form_submit_protector.js" => "public/javascripts/guilded.form_submit_protector.js",
   "guilded.form_submit_protector.min.js" => "public/javascripts/guilded.form_submit_protector.min.js",
   "jquery-disable_on_submit-1.0.js" => "public/javascripts/jquery/jquery-disable_on_submit-1.0.js",
   "jquery-disable_on_submit-1.0.min.js" => "public/javascripts/jquery/jquery-disable_on_submit-1.0.min.js"}.each do |file, path|  
    
    it "should copy '#{file}' to '#{path}'" do
      File.exists?( File.join( @destination, path ) ).should be_true
    end
    
    it "should agree that the contents of '#{file}' are identical to '#{path}'" do
      File.read( File.join( @source, file ) ).should eql File.read( File.join( @destination, path ) )
    end
  end
end