# icode

icode
==================

Sample docker image to test docker deployments
Created from original icode repo for my own demonstrations.
https://github.com/nieleyde/icode

Usage
-----

To create the image `tumbilandia/icode`, execute the following command on the icode folder:

	docker build -t tumbilandia/icode .

You can now push your new image to the registry:

	sudo docker push tumbilandia/icode


Running your Hello World docker image
-------------------------------------

Start your image:

	sudo docker run -d -p 80 tumbilandia/icode

It will print the new container ID (like `d35bf1374e88`). Get the allocated external port:

	sudo docker port d35bf1374e88 80

It will print the allocated port (like 4751). Test your deployment:

	curl http://localhost:4751/


Hello world!
