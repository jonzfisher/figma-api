# README

This API is a client used for searching the Nodes within a Figma file. Figma is a popular tool for designing and prototyping that gives the you power to collaborate in real time with other designers. All nodes within a Figma file have a name, whether it is a vector, an ellipse, or the document itself. This client gives you the ability to search on that name.

### Starting the app.

```rails s```

You can hit "https://localhost:3000/figma_files/show.json?id=PAalkr4Lvt9nTEJTmFMphB" to check an example response for the app. Currently the client is set to a specific test user's files.

To return all nodes in the file you can hit

```figma_files/nodes.json?id=PAalkr4Lvt9nTEJTmFMphB```

To this endpoint you can add either `&sort:desc`, `&sort:asc`, or `&filter=str` to present the results.

To search nodes in the file for a string. Setting `query` as your parameter.

```figma_files/search.json?id=PAalkr4Lvt9nTEJTmFMphB&query=str```
 
### Testing
RSpec is used to test the app.

Simply run `rspec` to run all tests in the test suite. Run simplecov to see your test coverage.

