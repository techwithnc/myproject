// ssh key module
resource "tls_private_key" "tls01" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "local_file" "file01" {
  content  = tls_private_key.tls01.private_key_pem
  filename = "tf-sshkey.pem"
}
resource "aws_key_pair" "kp01" {
  key_name   = "tf-sshkey"
  public_key = tls_private_key.tls01.public_key_openssh
}