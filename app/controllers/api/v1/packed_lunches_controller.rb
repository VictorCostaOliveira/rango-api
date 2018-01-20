class Api::V1::PackedLunchesController < Api::V1::ApiController

  def index
    packed_lunches = PackedLunch.all
    render_success serialize_resource_list(packed_lunches, PackedLunchesSerializer)
  end
end
