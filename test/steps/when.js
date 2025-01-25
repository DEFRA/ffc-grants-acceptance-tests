import { When } from '@wdio/cucumber-framework'

When(/^(?:the user clicks|clicks) on "([^"]*)?"$/, async (text) => {
  await $(`//*[contains(text(),'${text}')]`).click()
})

When(/^the user selects "([^"]*)?"$/, async (text) => {
  const element = await $(`//label[contains(text(),'${text}')]/preceding-sibling::input`)
  if (!(await element.isSelected())) {
    await element.click()
  }
})

When(/^(?:the user continues|continues)$/, async () => {
  await $(`//button[contains(text(),'Continue')]`).click()
})

When(/^(?:the user submits|submits) their form$/, async () => {
  await $(`//button[contains(text(),'Send')]`).click()
})

When(/^(?:the user navigates|navigates) backward$/, async () => {
  await $("//a[@class='govuk-back-link']").click()
})
