# devops-django-react-task

## The entire app workflow 

- clone repo
- cd into the primary folder
- run the `install-docker-n-compose-container.sh` too install docker on host and spin up docker compose
-  
- intall docker manually, digital ocean had a great docs 
- then run `docker-compose up`


## Backend development workflow

```json
virtualenv env
source env/bin/activate
pip install -r requirements.txt
python manage.py runserver
```

## Frontend development workflow

You are to update your name in ./frontend/components/App.js

```json
npm i
npm start
```

## For deploying

```json
npm run build
```

It should look like this if successful
<img width="1440" alt="Screen Shot 2022-11-02 at 19 30 22" src="https://user-images.githubusercontent.com/66765302/199572589-43bd05b7-95a6-455c-bc25-3cd437c95339.png">
