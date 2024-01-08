Get data resource from grafana ,this code gets the list of all users .


To get the information of a specific user , or to filter users , use the following code and put it in data.tf file .

data "grafana_user" "user" {
    email = "admin@localhost"
}
