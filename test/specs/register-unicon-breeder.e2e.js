import { browser } from '@wdio/globals'

describe('Register unicorn breeder form - e2e', () => {
  it('open page', async () => {
    await browser.url('/preview/draft/e2e-form/whats-your-name')
  })
})
