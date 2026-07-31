module "s3"{
    source = "../Projects1"
    initial = "bs"
    surname = "sithole"
    environment = "dev"
    resource = "s3"

}

module "eks"{
    source  = "./modules/eks"
}
