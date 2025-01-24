import { browser } from '@wdio/globals'

describe('Example Grant Journey', () => {
  it('should follow journey', async () => {
    await browser.url('/grants/start')
  })
})
