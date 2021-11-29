# excel-report

## python environment
1. create your virtual environment
    ```$ python -m venv venv```
2. activate your environment
    ```$ source ./venv/Scripts/activate```
3. install dependencies in your virtual enviroment
    ```$ pip install -r requirements.txt```

## setup
1. create .env file in the project root directory.
2. create the following environment variables in the .env file:
    ```
    export USER_NAME=
    export USER_PASSWORD=
    export CONFLUENCE_BASE_URL=
    export ATTACHMENT_FILE_NAME=
    export PAGE_ID=
    export ATTACHMENT_ID=
    ```
3. Copy your excel file to be refreshed in the root directory

## execution
./upload.sh