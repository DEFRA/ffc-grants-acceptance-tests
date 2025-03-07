import { When } from '@wdio/cucumber-framework'
import ScoreResultsPage from '../page-objects/score-results.page'

When(/^(?:the user clicks|clicks) on "([^"]*)?"$/, async (text) => {
  await $(`//*[contains(text(),'${text}')]`).click()
})

When(/^the user selects "([^"]*)?"$/, async (text) => {
  const element = await $(`aria/${text}`)
  if (!(await element.isSelected())) {
    await element.click()
  }
})

When(/^(?:the user selects|selects) the following$/, async (dataTable) => {
  for (const row of dataTable.raw()) {
    const element = await $(`aria/${row[0]}`)
    if (!(await element.isSelected())) {
      await element.click()
    }
  }
})

When(/^(?:the user continues|continues)$/, async () => {
  await $(`aria/Continue`).click()
})

When(/^(?:the user submits|submits) their form$/, async () => {
  await $(`aria/Send`).click()
})

When(/^(?:the user navigates|navigates) backward$/, async () => {
  await $(`//a[@class='govuk-back-link']`).click()
})

When(/^(?:the user chooses|chooses) to change their "([^"]*)?" answer$/, async (topic) => {
  await ScoreResultsPage.changeAnswerFor(topic)
})

When(/^(?:the user enters|enters) "([^"]*)?" for "([^"]*)?"$/, async (text, label) => {
  await $(`aria/${label}`).setValue(text)
})
