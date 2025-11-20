# frozen_string_literal: true

ActiveAdmin.register Post do
  rhino_filters
  rhino_permit_params
end
