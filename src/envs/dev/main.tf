terraform { 
  cloud { 
    
    organization = "Devops_learning_tahmid" 

    workspaces { 
      name = "tahmid-dev" 
    } 
  } 
}
module "tahmid_dev"{
    source="../../blueprints"
    vpc_cidr = "10.10.0.0/16"
    vpc_name = "tahmid-dev-vpc"
    availability_zones = ["ap-southeast-1a"]
    public_subnets = ["10.0.0.0/24"]
    custom_tag={
        env="tahmid_dev"
        team="app"
        managed_by_tf=true
        workspace="tahmid_dev"
    }
}