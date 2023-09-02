resource "helm_realse" "chatroom_app" {
    name = "chatroom_application"
    repository = "s3://helm-charts-bucket-sep-2023/charts/"
    chart = "chatroom-0.1.0.tgz"

    set {
        name = "replicaCount"
        value = 1
    }
}