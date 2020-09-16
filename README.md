# Gitlab forge, with Kubernetes cluster on Scaleway using only Terraform and Packer !

This project is a lab using IaC, Hashicorp Terraform and Packer to build a Gitlab Forge, with Kubernetes cluster on Scaleway !

If you need more information about this, please read the following blog post (in french) : [Link](blog.wescale.fr/une-forge-logicielle-gitlab-kubernetes-hebergee-chez-scaleway-totalement-en-infrastructure-as-code/ )

## Disclamer 

This is an Lab project ! Do not use it directly on production ;) You can by improving it and share the result of course.

## Requierments

`Packer`, `Terraform`, Scaleway account and tokens and your brain (a little bit).

## How deploy it ?

Export your tokens.

```
export SCW_ACCESS_KEY=XXXXXXX
export SCW_SECRET_KEY=YYYY-YYYY-YYYY
export AWS_ACCESS_KEY_ID=XXXXXXX # For Terraform backend compatibility
export AWS_SECRET_ACCESS_KEY=YYYY-YYYY-YYYY
export SCW_DEFAULT_ORGANIZATION_ID=OOOO-OOOO-OOOO
```

Now you can create the packer image by following theres steps :

* validate : `packer validate packer/packer.json`
* build : `packer build packer/packer.json`

After the build, copy your template ID on terraform/varaiables.tf in default imgID.

Create a private bucket for Terraform states storage and configure it on provider.tf.

Deploy Terraform : `terraform apply`

Enjoy
