resource "google_storage_bucket" "create_bucket" {
  name          = var.bucket_name
  location      = "asia-northeast1"
  website {
    main_page_suffix = "index.html"
  }
}