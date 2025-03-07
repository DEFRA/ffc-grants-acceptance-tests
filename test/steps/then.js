import { Then } from '@wdio/cucumber-framework'
import { pollForSuccess } from './polling'
import ScoreResult from '../dto/score-result'
import ScoreResultsPage from '../page-objects/score-results.page'
import SummaryAnswer from '../dto/summary-answer'
import SummaryPage from '../page-objects/summary.page'

Then(/^(?:the user should|should) see heading "([^"]*)?"$/, async (text) => {
  if (text.indexOf("'") > -1) {
    text = text.substring(0, text.indexOf("'"))
  }
  await expect($(`//h1[contains(text(),'${text}')]`)).toBeDisplayed()
})

Then(/^(?:the user should|should) be at URL "([^"]*)?"$/, async (expectedPath) => {
  const doesActualUrlEndWithExpectedPath = await pollForSuccess(async () => {
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

Then(/^(?:the user should|should) see "([^"]*)?" for their project score$/, async (expectedScore) => {
  const actualScore = await ScoreResultsPage.score()
  await expect(actualScore).toEqual(expectedScore)
})

Then(/^(?:the user should|should) see the following score results$/, async (dataTable) => {
  const expectedScoreResults = []
  let scoreResult = {}

  for (const row of dataTable.hashes()) {
    const topic = row.TOPIC
    const answer = row.ANSWERS
    const score = row.SCORE
    const fundingPriority = row['FUNDING PRIORITIES']

    if (topic) {
      scoreResult = new ScoreResult(topic, [], score, [])
      expectedScoreResults.push(scoreResult)
    }

    if (answer) {
      scoreResult.answers.push(answer)
    }

    if (fundingPriority) {
      scoreResult.fundingPriorities.push(fundingPriority)
    }
  }

  const actualScoreResults = await ScoreResultsPage.results()
  await expect(actualScoreResults).toEqual(expectedScoreResults)
})
