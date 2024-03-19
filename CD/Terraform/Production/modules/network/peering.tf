resource "aws_vpc_peering_connection" "peering" {
  vpc_id      = aws_vpc.vpc.id
  peer_vpc_id = data.aws_vpc.vpc_peer.id
  auto_accept = true
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
