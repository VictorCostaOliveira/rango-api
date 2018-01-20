class Api::V1::ApiController < ApplicationController
  # include APITokenAuthenticable
  include APICommonResponses

  # protect_from_forgery with: :null_session

  respond_to :json

  # rescue_from BCrypt::Errors::InvalidHash do |exception|
  #   render json: { errors: exception }, status: :unauthorized
  # end

  protected
    def serialize_resource(resource, serializer)
      response = {}
      response[resource.model_name.param_key.to_sym] = JSON.parse(serializer.new(resource, {}).to_json)
      { data: response }
    end

    def serialize_resource_list(resources, serializer)
      { data: JSON.parse(ActiveModelSerializers::SerializableResource.new(resources, each_serializer: serializer).to_json) }
    end

    def serialize_fixed_values(values)
      { data: values }
    end
end
