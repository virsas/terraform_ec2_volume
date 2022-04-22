resource "aws_volume_attachment" "ebs_att" {
  device_name = var.mountPoint
  volume_id   = var.volumeID
  instance_id = var.instanceID
}