module APICommonResponses
  extend ActiveSupport::Concern

  def render_success(data={})
      default = { status: 200 }
      response = default.merge(data)
      render json: response, status: :ok
    end

    def render_created
      render json: { status: 201 }, status: :created
    end

    def render_unprocessable_entity_error(data={})
      default = { status: 422, message: I18n.t('api_errors.render_unprocessable_entity') }
      response = default.merge(data)
      render json: response, status: :unprocessable_entity
    end

    def render_not_found_error
      response = { status: 404, message: I18n.t('api_errors.render_not_found') }
      render json: response, status: :not_found
    end

    def render_forbidden_error(data={})
      default = { status: 403, message: I18n.t('api_errors.render_forbidden') }
      response = default.merge(data)
      render json: response, status: :forbidden
    end

    def render_unauthorized_error(data={})
      default = { status: 401, message: I18n.t('api_errors.render_unauthorized') }
      response = default.merge(data)
      render json: response, status: :unauthorized
    end

    def render_bad_request(data={})
      default = { status: 400, message: I18n.t('api_errors.render_bad_request') }
      response = default.merge(data)
      render json: response, status: :bad_request
    end

end
