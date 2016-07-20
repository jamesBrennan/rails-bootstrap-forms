require 'bootstrap_form/form_builder'
require 'bootstrap_form/helper'

module BootstrapForm
  module Rails
    class Engine < ::Rails::Engine
      initializer "rails-bootstrap-forms.load_view_helpers" do |app|
        ActiveSupport.on_load(:action_view) do
          include BootstrapForm::Helper
        end
      end
    end
  end
end
