resource "google_storage_bucket_object" "upload_object" {
  name   = var.name
  source = var.object_source
  bucket = var.target_bucket
}