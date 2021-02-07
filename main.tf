resource "aws_instance" "my_instance" {
  instance_type = var.instance_type
  ami           = lookup(var.AMIS, var.region)
  #  availability_zone     = var.availability_zone
  subnet_id              = data.aws_subnet.public_subnet.id
  vpc_security_group_ids = var.security_group_id

  tags = merge(
    var.additional_tags,
    {
      "env"     = "dev"
      "creator" = "dinesh"
  })
}

#practicing locals
locals {
  #string functions
  hello        = format("Hello, %s!", "Andy")
  format_list  = formatlist("Hello, %s!", ["Valentina", "Olivia", "Sam"])
  join_list    = join(",", ["foo", "bar", "again"])
  replace_func = replace("dinesh + is + learning", "+", " ")
  split_func   = split(" ", "dinesh is learning")
  #collection functions
  lookup_type = lookup({ a = "ay", b = "bee" }, "a", "what?")
  #index(list, value)
  #contains(list, value)
  #concat(["a", "b"],["c", "d"])
  concat_type = concat(["a", "b"], ["c", "d"])
  #element(list, index)
  #length(["a","b","c","d"])
  merge_type = merge({ "a" = "b" }, { "c" = "d" }) #only takes map or objects as inputs

}

output "instance_id" {
  value = aws_instance.my_instance.id
}

output "outcome_1" {
  value = local.hello
}

output "outcome_2" {
  value = local.format_list
}

output "outcome_3" {
  value = "${local.join_list}-joined"
}

output "outcome_4" {
  value = "${local.replace_func}-replaced"
}

output "outcome_5" {
  value = ["${local.split_func}"]
}

output "outcome_6" {
  value = local.concat_type
}

output "outcome_7" {
  value = local.merge_type
}