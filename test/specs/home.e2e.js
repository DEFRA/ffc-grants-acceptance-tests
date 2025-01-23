import { browser } from '@wdio/globals'

describe('Home page', () => {
  it('Should be on the "Home" page', async () => {
    await browser.url('/preview/draft/e2e-form/whats-your-name')
  })
})
