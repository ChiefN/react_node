Detta projekt är en enkel react applikation som leveras på två olika sätt

För att bygga en containerbild för hosting(Leverans med nginx):
* docker build -t reactimg . 

För att bygga en containerbild för lokal utveckling(Leverans genom node):
* docker build -t reactimgv2 --file Dockerfile_V2 . 

För att starta en container:
* docker container run --name reactC -d -p 3000:80 reactimg

För att bygga och starta en container som körs genom node:
* docker container run --name reactCLocal -d -p 3000:3000 reactimgv2

För att ta stoppa och ta bort containrar:
* docker container rm -f reactC
* docker container rm -f reactCLocal

Hemsidan går att besöka på localhost:3000