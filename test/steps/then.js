import { Then } from '@wdio/cucumber-framework'
import poller from './poller'

Then(/^(?:the user should|should) see heading "([^"]*)?"$/, async (text) => {
  if (text.indexOf("'") > -1) {
    text = text.substring(0, text.indexOf("'"))
  }
  await expect($(`//h1[contains(text(),'${text}')]`)).toBeDisplayed()
})

Then(
  /^(?:the user should|should) be at URL "([^"]*)?"$/,
  async (expectedPath) => {
    const doesActualUrlEndWithExpectedPath = await poller.pollForSuccess(
      async () => {
        const actualUrl = await browser.getUrl()
        return await actualUrl.endsWith(expectedPath)
      }
    )
    await expect(doesActualUrlEndWithExpectedPath).toBe(true)
  }
)
