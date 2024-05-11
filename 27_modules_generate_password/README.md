Definition of default environment variable in module , if the env is not defined when using the module, it uses rhe dafault env.

Generate random password for envs MYSQL_ROOT_PASSWORD and MYSQL_PASSWORD ,
after run terraform apply, the new pass show in terraform.tfstate .

With the following command, you can see the password:

terraform output -json
 

