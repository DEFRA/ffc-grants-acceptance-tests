import allure from 'allure-commandline'
import { browser } from '@wdio/globals'

export const config = {
  baseUrl: `https://grants-ui.test.cdp-int.defra.cloud`,
  maxInstances: 10,
  capabilities: [
    {
      maxInstances: 1,
      browserName: 'chrome',
      'goog:chromeOptions': {
        args: ['--no-sandbox', '--disable-infobars', '--disable-gpu', '--window-size=1920,1080']
      }
    }
  ],
  runner: 'local',
  specs: ['./test/features/**/*.feature'],
  exclude: [],
  logLevel: 'info',
  bail: 1,
  waitforTimeout: 10000,
  waitforInterval: 200,
  connectionRetryTimeout: 120000,
  connectionRetryCount: 3,
  framework: 'cucumber',
  reporters: [
    'spec',
    [
      'allure',
      {
        outputDir: 'allure-results',
        useCucumberStepReporter: true
      }
    ]
  ],
  cucumberOpts: {
    require: ['./test/steps/*.js'],
    backtrace: false,
    requireModule: [],
    dryRun: false,
    failFast: false,
    name: [],
    snippets: true,
    source: true,
    strict: false,
    tagExpression: '',
    timeout: 180000,
    ignoreUndefinedDefinitions: false
  },
  afterTest: async function (test, context, { error, result, duration, passed, retries }) {
    await browser.takeScreenshot()

    if (error) {
      browser.executeScript('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"failed","reason": "At least 1 assertion failed"}}')
    }
  },
  onComplete: function (exitCode, config, capabilities, results) {
    const reportError = new Error('Could not generate Allure report')
    const generation = allure(['generate', 'allure-results', '--clean'])

    return new Promise((resolve, reject) => {
      const generationTimeout = setTimeout(() => reject(reportError), 6000)

      generation.on('exit', function (exitCode) {
        clearTimeout(generationTimeout)

        if (exitCode !== 0) {
          return reject(reportError)
        }

        allure(['open'])
        resolve()
      })
    })
  },
  afterScenario: async function (world, result, context) {
    await browser.reloadSession()
  }
}
