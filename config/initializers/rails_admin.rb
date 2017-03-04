RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  config.main_app_name = ["Octa", "Lottery"]
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app


    config.model User do
      navigation_icon 'icon-user'
      create do
        field  :name
      end

      edit do
        field  :name
        field  :wallet
        field  :wallet_key
        field  :kind
        field  :email
      end
      list do
        field  :name
        field  :email
        field  :kind
        field  :wallet
      end
    end

    config.model Ticket do
      create do
        field  :status
        field  :code
        field  :value
        field  :kind
      end

      edit do
        field  :status
        field  :code
        field  :value
        field  :kind
      end
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
