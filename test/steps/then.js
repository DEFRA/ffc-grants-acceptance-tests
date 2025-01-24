import { Then } from '@wdio/cucumber-framework'
import poller from './poller'
import { SummaryAnswer, SummaryPage } from '../page-objects/summary-page'

Then(/^(?:the user should|should) see heading "([^"]*)?"$/, async (text) => {
  if (text.indexOf("'") > -1) {
    text = text.substring(0, text.indexOf("'"))
  }
  await expect($(`//h1[contains(text(),'${text}')]`)).toBeDisplayed()
})

Then(/^(?:the user should|should) be at URL "([^"]*)?"$/, async (expectedPath) => {
  const doesActualUrlEndWithExpectedPath = await poller.pollForSuccess(async () => {
    const actualUrl = await browser.getUrl()
    return await actualUrl.endsWith(expectedPath)
  })
  await expect(doesActualUrlEndWithExpectedPath).toBe(true)
})

Then(/^(?:the user should|should) see the following answers$/, async (dataTable) => {
  const expectedAnswers = []
  for (const row of dataTable.hashes()) {
    expectedAnswers.push(new SummaryAnswer(row.QUESTION, row.ANSWER))
  }
  const actualAnswers = await new SummaryPage().getAnswers()
  await expect(actualAnswers).toEqual(expectedAnswers)
})
