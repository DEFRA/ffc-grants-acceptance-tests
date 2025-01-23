import HomePage from 'page-objects/home.page'

describe('Home page', () => {
  it('Should be on the "Home" page', async () => {
    await HomePage.open()
  })
})
