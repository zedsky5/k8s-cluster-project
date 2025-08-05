provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.this.token
}

provider "helm" {
  kubernetes {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
    token                  = data.aws_eks_cluster_auth.this.token
  }
}

data "aws_eks_cluster_auth" "this" {
  name = module.eks.cluster_name
}

resource "helm_release" "wordpress" {
  name       = "my-wordpress"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "wordpress"
  namespace  = "default"

  values = [
    "${file("custom-values.yaml")}"
  ]
}