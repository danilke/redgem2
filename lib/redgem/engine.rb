require 'rails'
require 'redgem'

module Redgem
  class Engine < Rails::Engine
     isolate_namespace Redgem

	initializer 'redgem' do |app|

		ActiveSupport.on_load :after_initialize do
		    app.routes.prepend do
		     match 'timesheet/index', :controller => 'timesheet', :action => 'index'
			 match 'timesheet/context_menu', :controller => 'timesheet', :action => 'context_menu'
			 match 'timesheet/report.:format', :controller => 'timesheet', :action => 'report'
			 match 'timesheet/reset', :controller => 'timesheet', :action => 'reset', :conditions => { :method => :delete }
		    end
		end
		
        pattern = pattern_from app.config.i18n.available_locales
        add("rails/locale/#{pattern}.yml")
    

    end
   

    protected

    def self.add(pattern)
      files = Dir[File.join(File.dirname(__FILE__), '../..', pattern)]
      I18n.load_path.concat(files)
    end

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end


  end
end