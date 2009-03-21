$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'g_form_submit_protector/view_helpers'

module GFormSubmitProtector
  VERSION = '1.0.1'
end

if defined?( ActionView::Base )
  ActionView::Base.send( :include, GFormSubmitProtector::ViewHelpers ) unless ActionView::Base.include?( GFormSubmitProtector::ViewHelpers )
end