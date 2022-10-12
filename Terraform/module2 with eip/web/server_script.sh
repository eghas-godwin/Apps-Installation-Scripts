#!/bin/bash
sudo yum update
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start
sudo echo "<h1>Welcom to Ntech Multiserve Limited</h1>" | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app
sudo echo <!DOCTYPE html>
<html>
<body>

<h3 style="color:DodgerBlue;">WELCOME TO NTECH MULTISERVE LIMITED</h3>

<p style="color:MediumSeaGreen;">My God is God Indeed.</p>

<p style="color:MediumSeaGreen;">This is to inform you that your Demo was successful..</p>

<P style="color:Tomato;">Terraform Demo</P>
<h5 style="color:Tomato;">Application Version: V1</h5>

</body>
</html> | sudo tee /var/www/html/app/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document/ -o /var/www/html/app/metadata.html
