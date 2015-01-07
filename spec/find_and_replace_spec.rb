require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('returns input unchanged if no matches found') do
    expect(("Hello World").find_and_replace("cat","dog")).to eq("Hello World")
  end

  it('if object is exactly the same as the first argument, return the second argument') do
    expect(("cat").find_and_replace("cat", "dog")).to eq("dog")
  end

  it('if input contains find string, replace find string with replace string and output modified input') do
    expect("Hello world".find_and_replace("world", "universe")).to eq("Hello universe")
  end

  it('if input contains the find string (with two words), replace find string with replace string and output modified input') do
    expect("My name is Slim Shady".find_and_replace("Slim Shady", "Dr. Dre")).to eq("My name is Dr. Dre")
  end

  it('///') do
    expect("My name is Slim Shady yo".find_and_replace("Slim Shady", "Dr. Dre")).to eq("My name is Dr. Dre yo")
  end

  it('xxx') do
    expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to eq("I am walking my dog to the doghedral")
  end
end
