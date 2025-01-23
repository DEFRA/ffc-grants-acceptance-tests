import { $, browser } from '@wdio/globals'

describe('Home page', () => {
  it('Should be progress the journey', async () => {
    await browser.url('/grants/start')

    await expect(browser).toHaveTitle(`Start page - Grants - GOV.UK`)
    await $(`//button[@type='submit']`).click()

    await expect(browser).toHaveTitle(`Are you in England? - Grants - GOV.UK`)
  })
})
