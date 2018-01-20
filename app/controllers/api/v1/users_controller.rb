class Api::V1::UsersController < Api::V1::ApiController

    def create_user_order
      packed_lunches = PackedLunch.where(id: user_order_params[:packed_lunches])
      user_order = UserOrder.new(user: find_user, packed_lunches: packed_lunches)
      if user_order.save
        render json: {status: :ok}
      else
      end
    end


    private

      def user_order_params
        params.permit(packed_lunches: [])
      end

      def find_user
        user = User.find_by(id: params[:id])
      end
end
