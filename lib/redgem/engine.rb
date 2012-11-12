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

    end


  end
end