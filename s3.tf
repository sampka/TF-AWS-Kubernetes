data "aws_region" "current" {
  current = true
}

resource "aws_s3_bucket" "tectonic" {
  # Buckets must start with a lower case name and are limited to 63 characters,
 
  bucket = "${var.tectonic_aws_assets_s3_bucket_name == "" ? format("%s%s-%s", "a", var.tectonic_cluster_name, md5(format("%s-%s", data.aws_region.current.name , var.tectonic_base_domain))) : var.tectonic_aws_assets_s3_bucket_name }"

  acl = "private"

  tags = "${merge(map(
      "Name", "${var.tectonic_cluster_name}-tectonic",
      "KubernetesCluster", "${var.tectonic_cluster_name}",
      "tectonicClusterID", "${module.tectonic.cluster_id}"
    ), var.tectonic_aws_extra_tags)}"

  lifecycle {
    ignore_changes = ["*"]
  }
}

resource "aws_s3_bucket_object" "tectonic_assets" {
  bucket = "${aws_s3_bucket.tectonic.bucket}"
  key    = "assets.zip"
  source = "${data.archive_file.assets.output_path}"
  acl    = "private"


  server_side_encryption = "AES256"

  tags = "${merge(map(
      "Name", "${var.tectonic_cluster_name}-tectonic-assets",
      "KubernetesCluster", "${var.tectonic_cluster_name}",
      "tectonicClusterID", "${module.tectonic.cluster_id}"
    ), var.tectonic_aws_extra_tags)}"

  lifecycle {
    ignore_changes = ["*"]
  }
}

# kubeconfig
resource "aws_s3_bucket_object" "kubeconfig" {
  bucket  = "${aws_s3_bucket.tectonic.bucket}"
  key     = "kubeconfig"
  content = "${module.bootkube.kubeconfig}"
  acl     = "private"


  server_side_encryption = "AES256"

  tags = "${merge(map(
      "Name", "${var.tectonic_cluster_name}-kubeconfig",
      "KubernetesCluster", "${var.tectonic_cluster_name}",
      "tectonicClusterID", "${module.tectonic.cluster_id}"
    ), var.tectonic_aws_extra_tags)}"
}
