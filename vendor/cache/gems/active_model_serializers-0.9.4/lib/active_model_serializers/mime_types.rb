# module ActiveModelSerializers::JSONAPI
#   HEADERS = {
#     content_type: { "CONTENT_TYPE" => JSONAPI::MEDIA_TYPE }
#   }
#   MEDIA_TYPE = 'application/vnd.api+json'
# end
#
# Mime::Type.register ActiveModelSerializers::JSONAPI::MEDIA_TYPE, :api_json
#
# ActionDispatch::ParamsParser::DEFAULT_PARSERS[Mime::Type.lookup(ActiveModelSerializers::JSONAPI::MEDIA_TYPE)] = lambda do |body|
#   data = JSON.parse(body)
#   data = {:_json => data} unless data.is_a?(Hash)
#   data.with_indifferent_access
# end
