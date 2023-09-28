# Cucumber/Cypress Test Automation

## Setup

### Pre-conditions

You must have NodeJS installed in order to setup and run this project. The
easiest way to do that is using [Node Version Manager](https://github.com/nvm-sh/nvm).
Any reasonably modern version of NodeJS should work, but the project is known
to work with `lts/hydrogen`.

### Procedure

1. Clone the project:  
`git clone git@github.com:fvalino/cypress-test-automation.git`
2. Install the dependencies (from the `package-lock.json` file):  
`npm clean-install`
3. Run the tests in headless mode:  
`npm run test`

You can open the Cypress runner to manually execute the tests by running
`npm run cy:open`

### IDE (VSCode) Integration

If you are using VS Code as your IDE you can add the **Given When Then**
extension to assist with syntax highlighting and snippet support.

Click on the Extentions module icon located to the far left of your VS Code IDE.
Search for "Cucumber". Select the **Given, When, Then** extension (IMPORTANT:
The official plugin name is **"Cucumber (Gherkin) Full Support"** and the
author is "Alexander Krechik").

Click the install button. After the installation completes, reload VSCode to
see that the extension is installed and enabled.

Next, click the gear icon in the plugin you just installed and select
'Extensions settings'. Then under Custom Parameters click the 'Edit in
settings.json' link. Then add the following line. (try to keep it close to all
the other cucumber settings):

```
"cucumberautocomplete.steps": [
        "cypress/support/step_definitions/*.js"
    ],
```

Close and save the settings.

YOU'RE DONE! Save all you changes and you should be good to go.  Good luck!

## Testing

_Fin, this is **all you**, buddy (iow, tbd)._
