resource "aws_iam_role" "main" {
  name               = "${var.config_name}-role"
  assume_role_policy = data.aws_iam_policy_document.aws-config-role-policy.json
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "managed-policy" {
  role       = aws_iam_role.main.name
  policy_arn = format("arn:%s:iam::aws:policy/service-role/AWS_ConfigRole", data.aws_partition.current.partition)
}

resource "aws_iam_policy" "aws-config-policy" {
  name   = "${var.config_name}-policy"
  policy = data.aws_iam_policy_document.aws_config_policy.json
}

resource "aws_iam_role_policy_attachment" "aws-config-policy" {
  role       = aws_iam_role.main.name
  policy_arn = aws_iam_policy.aws-config-policy.arn
}