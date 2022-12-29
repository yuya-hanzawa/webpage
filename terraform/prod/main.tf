module "create_website_bucket" {
  source      = "../modules/storage_bucket/create_bucket/"
  bucket_name = "hanzawa-yuya-test"
}

module "upload_index.html" {
  source        = "../modules/storage_bucket/upload_object/"
  name          = "upload_index.html"
  object_source = "../../index.html"
  target_bucket = module.create_website_bucket.name
}

module "upload_css_dir" {
  source        = "../modules/storage_bucket/upload_object/"
  name          = "upload_css_dir"
  object_source = "../../css/"
  target_bucket = module.create_website_bucket.name
}