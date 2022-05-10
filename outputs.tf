output "myoutvpc_id" {
  description = "ID of project VPC"
  value       = aws_vpc.myvpc.id
}
output "vpc_arn" {
  description = "ID of project VPC"
  value       = aws_vpc.myvpc.arn
}