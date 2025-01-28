import { Then } from '@wdio/cucumber-framework'
import poller from './poller'
import SummaryAnswer from '../dto/summary-answer'
import SummaryPage from '../page-objects/summary.page'

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
  const actualAnswers = await SummaryPage.answers()
  console.log('EXPECTED: ' + JSON.stringify(expectedAnswers))
  console.log('ACTUAL: ' + JSON.stringify(actualAnswers))
  await expect(actualAnswers).toEqual(expectedAnswers)
})

Then(/^(?:the user should|should) see error "([^"]*)?"$/, async (text) => {
  await expect($(`//div[@class="govuk-error-summary"]//a[contains(text(),'${text}')]`)).toBeDisplayed()
})
