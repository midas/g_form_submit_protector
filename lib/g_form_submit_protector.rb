$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module GFormSubmitProtector
  VERSION = '1.0.0'
end

if defined?( ActionView::Base )
  ActionView::Base.send( :include, GFormSubmitProtector::ViewHelpers ) unless ActionView::Base.include?( GFormSubmitProtector::ViewHelpers )
end