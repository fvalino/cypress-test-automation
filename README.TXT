This README file will help you get setup to run the tests contained in this project.
There are a fiew things you wil have to do to prepare this project to be able to run tests.

1. Install and configure npm
2. Install and configure node.ja
3. Install and configure cypress.io
4. Install and configure cucumber packages
5. (Optional) Install and configure browserstack

You may already have some of these setup on your laptop. For example, if you are a .js developer,
you likely already have node.js and npm installed and configured on your local machine. Feel
free to skip those sections and read through the sections where you may require some guidance.

INSTALL Node and NPM 
====================
Go to the following URL.

https://nodejs.org/en/download

1. Download the LTS  of Node.js for specific to the OS running on your laptop.
2. When the installer download completes, launch the installer.
3. Accept all the default settings.

When the installation completes successfully you can check to see if Node.js was installed 
properly by typing

'node -v' on terminal window. This should bring back the version of Node.js you just installed. 
Similarly, you can also type 'npm -v' to check that npm was installed as well. If your system
responds with a version number to both of these commands, then Node.js is preperly installed on
your local machine.

INITIALIZING NODE.JS - CREATING A PACKAGE.JASON
===============================================
Assuming, you've cloned the cypress-test-automation repository to your local machine...

1. Open the 'cypress-test-automation' folder in an IDE of your choice.
2. Open a terminal window within your IDE and type 'npm init' and press Enter on you keyboard.
3. You will be asked a few questions - just accept all the defaults by pressing Enter except for
   Author. For author, enter your name.

This will create a package.json file in your project which will enable you to download and install
Cypress and Cucumber.

OOWNLOAD CYPRESS PACKAGES
==========================
Next, go back to your terminal window - making sure you are in your project directory - and type
the following.

npm install --save-dev cypress@13.2.0

Press Enter and this will download all the necessary packages to allow your project to use Cypress.
It will also add a new dependency in your package.jason file under devDependencies. Finally, you will
also have a new folder in your IDE explorer called "node_modules" which contains all the relevant
packages needed for cypress to run.


INSTALL NPX
===========
Installing NPX will make it possible to launch cypress using relative path from a
terminal command prompt rather than absolut path. to install NPX from your command
line prompt, type the following.

npm install -g npx 

Press Enter and the necessary packages will be installed.


SETUP CYPRESS 
=================
Next you have to setup Cypress. You do this by typing the following command in the
terminal window command prompt.

npx cypress open 

Cypress will recognize that this is the first time you are launching Cypress.

1. Select E2E testing
2. Click the Continue button to allow Cypress to install config files
3. Select a browser and click the Start E2E Testing in <Brower you chose> button
4. Click on Scaffold example specs - it will give you a list of sample tests that
will be installed.
5. Click on the OK I got it button

At this point, if you go back to your IDE and view the project explorer, you will
see that some new folders and files have been added.

1. Cypress directory subdirectories
2. The sample tests are in the cypress/e2e directory

Note: Later in this document you will be asked to delete all the sample tests. This
will allow you to have a clean project tree to setup the Cucumber framework.









