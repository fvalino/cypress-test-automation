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

RECOMMENDATION
==============
I recommend using VS Code as your IDE when working with this project. It has many
useful features and extentions that will make your use of this test automation
framework a lot easier. This is not necessary - just recommended.

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

CUCUMBER SETUP
==============
   
   DELETE UNNECESSARY DIRECTORIES

   In your project directory, navigate to .cypress/e2e/ and delete both the '1-getting-started' and '2-advanced-examples' folders
   along with any files contained therein.

   The e2e directory is where you will save your .feature files which will contain the Gherkin descriptions of the features you are 
   planning on testing.

   INSTALLING CUCUMBER

   To install Cucumber, type the following command at the commandline of your terminal.

      npm install --save-dev @badeball/cypress-cucumber-preprocessor

   Press Enter on your keyboard. This will install all the necessary packages necessary to use Cucumber and 
   add @badeball/cypress-cucumber-preprocessor as a dev dependency in your package.json file.

   UPDATING THE CYPRESS.CONFIG.JS FILE 
   ===================================
   Now, we will update the cypress.config.js file.  For this framework to work properly, we'll need to turn this file into a Typescript
   file by renaming the file to cypress.config.ts. It is literally as simple as changing the file extention from .js to .ts.

   Next you will copy the following and replace everything that is in your cypress.config.ts file with it. (I've done this to make it
   easy for you and to keep these instructions short(er))

--------Copy Everything Below This Line---------------
import { defineConfig } from "cypress";
import * as createBundler from "@bahmutov/cypress-esbuild-preprocessor";
import { addCucumberPreprocessorPlugin } from "@badeball/cypress-cucumber-preprocessor";
import createEsbuildPlugin from "@badeball/cypress-cucumber-preprocessor/esbuild";

export default defineConfig({
  projectId: 'ejcy3m',
  e2e: {
    specPattern: "**/*.feature",
    async setupNodeEvents(
      on: Cypress.PluginEvents,
      config: Cypress.PluginConfigOptions
    ): Promise<Cypress.PluginConfigOptions> {
      // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
      await addCucumberPreprocessorPlugin(on, config);

      on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );

      // Make sure to return the config object as it might have been modified by the plugin.
      return config;
    },
  },
  // retries:{
  //   // Configure retry attempts for `cypress run`
  //   // Default is 0
  //   "runMode": 2,
  //   // Configure retry attempts for `cypress open`
  //   // Default is 0
  //   "openMode": 5
  // },
});
----------------Copy Everything Above This Line---------------------

After pasting everything you copied from above into your cypress.config.js file, you may notice some errors. Don't worry absolut
them for now. They should all be resolved once you've finished with all the setup described in this document.

NOTE: IF YOU HAVEN'T SAVED ANYTHING UP TO THIS POINT, NOW WOULD BE A GOOD TIME TO "SAVE ALL."

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
//RESOLVING ISSUE WITH "import createEsbuildPlugin from "@badeball/cypress-cucumber-preprocessor/esbuild";"//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
At the root of your project, create a new file called tsconfig.json. Open the empty file you just created and paste the following.

{
    "compilerOptions": {
      "paths": {
        "@badeball/cypress-cucumber-preprocessor/*": ["./node_modules/@badeball/cypress-cucumber-preprocessor/dist/subpath-entrypoints/*"]
      }
    }
  }

Save your project "Save" or "Save all". The issue should be resolved.

///////////////////////////////////////////////////////////////////////////////////////////////////
//RESOLVING ISSUE WITH "import * as createBundler from "@bahmutov/cypress-esbuild-preprocessor";"//
///////////////////////////////////////////////////////////////////////////////////////////////////

The issue you may be observing in your cypress.config.ts file related to @bahmutov/cypress-esbuild-preprocessor is due to the
package not being installed. The way to install the package is to type the following.

   npm install --save-dev @bahmutov/cypress-esbuild-preprocessor

Press Enter on your keyboard and the necessary packages and dependencies will be installed. Once installed you should see the issue is resolved.
If it looks like there is still an indication of an issue, "SAVE ALL" and refresh your VS Code IDE view.

///////////////////////////////////////////////////////////////////////////////////
//CONFIGURING CYPRESS APPLICATION TO RECOGNIZE YOUR TYPSCRIPT CYPRESS CONFIG FILE//
///////////////////////////////////////////////////////////////////////////////////

If you run 'npx cypress open' from a terminal commandline, Cypress will launch it's test application with an error indicating that it
doesn't recognize the '.ts' extension you changed your cypress.config.js file to. To resolve this issue, go to the commandline and type
the following.

   npm install ts-loader --save-dev

Press Enter on your keyboard and relaunch the cypress app by typing 'npx cypress open'. You will see that this error no longer appears.

CONFIGURING VS CODE TO USE CUCUMBER
===================================
We're almost there!

Hopefully, you are using VS Code as your IDE as recommended earlier because we're going to need to add an extension.

Click on the Extentions module icon located to the far left of your VS Code IDE. Search for "Cucumber". Select the Given, When, Then
extention - IMPORTANT: MAKE SURE IT IS BY THE AUTHOR THAT GOES BY THE NAME "Alexander Krechik". Click the install button. After the
installation completes, reload your IDE view for the extention to show as enabled and installed.

Next, click the gear icon in the plugin you just installed and select 'Extentions settings'. Then under Custom Parameters
click the 'Edit in settings.json' link. Then add the following line. (try to keep it close to all the other cucumber settings)

"cucumberautocomplete.steps": [
        "cypress/support/step_definitions/*.js"
    ],

Close and save the settings.

Finally, update your package.json file by adding the following line.

"cypress-cucumber-preprocessor": {
    "stepDefinitions": "cypress/support/step_definitions/**/*.js"
  }

IT SHOULD LOOK SOMETHING LIKE THIS

 },
  "author": "Fin Valino",
  "license": "ISC",
  "devDependencies": {
    "@badeball/cypress-cucumber-preprocessor": "^18.0.5",
    "@bahmutov/cypress-esbuild-preprocessor": "^2.2.0",
    "browserstack-cypress-cli": "^1.0.1",
    "cypress": "^13.2.0",
    "cypress-xpath": "^2.0.1",
    "ts-loader": "^9.4.4"
  },
  "cypress-cucumber-preprocessor": {
    "stepDefinitions": "cypress/support/step_definitions/**/*.js"
  }
}

YOU'RE DONE! Save all you changes and you should be good to go.  Good luck!



