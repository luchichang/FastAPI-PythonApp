# FastApi-PythonApp

## Description
     This is a simple python app which renders the basic form and read the values provided in the form and display the output in the same page. html website is  rendered to the browser using  ** HTTP Get ** Method with the help of jinja2 library
     and once the user press the submit button the values send to the server via ** HTTP Post ** Method.

## Steps to Locally run the App
* set up the Environment,

 install the python 
    ```
       sudo apt update -y 
       sudo apt install python3 -y
    ```
  #### note:
   _Eliminate the Sudo if you run as a root User._

 move to the project directory and run the below command to create the virtual Environment

    ``` 
      python3 -m venv myenv
      source myenv/bin/activate
        
    ```
now run the command to installs the required packages and dependencies
   ```
      pip install -r requirements.txt
   ```     
