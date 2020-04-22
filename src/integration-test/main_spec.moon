-- source: main_spec.moon
describe "Integration Tests", ->
  it "runs", ->
    assert.are.equal true, true

  it "can reach out to the internet", ->
    assert.are.equal true, false
  
  it "can can ping django app", ->
    assert.are.equal true, false
  
  it "can can ping db app", ->
    assert.are.equal true, false
  