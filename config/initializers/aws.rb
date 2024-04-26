# Aws.config.update({
#   region: Rails.application.credentials.aws[:region],
#   credentials: Aws::Credentials.new(
#     Rails.application.credentials.aws[:access_key_id],
#     Rails.application.credentials.aws[:secret_access_key]
#   )
# })

# # Acesse o bucket diretamente
# s3 = Aws::S3::Resource.new
# bucket = s3.bucket(Rails.application.credentials.aws[:bucket])