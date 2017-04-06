# Rails Programming Task

### Please complete the following task.
*Note: This task should take no longer than 1-2 hours at the most to complete.*


### Prerequisites

- Please note that this will require that you have basic [Ruby on Rails](http://rubyonrails.org/) and [RSpec](https://github.com/rspec/rspec-rails) knowledge.

- You will need to have [Ruby on Rails](http://www.rubyonrails.org/) installed to complete this task.

## Task

- Fork this repository.
- Create a *source* directory.
- In the *source* directory, scaffold a simple Rails 4 web app that models `complaints`. JSON data structure below:

```
  {
    "id": 9923,
    "created": 1389618241,
    "user_email": "jake@bluesbrothers.com",
    "content": "I would like to report Joe, for what he did."
  }
```

    *Note: Content may contain between 1 and 4 paragraphs of text in a real use case.*

##### Create a form to submit complaints:

- This should be on its own view (most likely `GET /complaints/new` route).
- Include the following fields:
  - Email address
  - Complaint (*content text box*)
- The form should be functional. You should be able to submit complaints via this form (most likely `POST /complaints` route).
- Use Bootstrap to style this page.

##### Create a dashboard to review the complaints:

- This should be on its own view (most likely `GET /complaints` route).
- Complaints should be displayed in a list with the following information for each item:
  - Email address
  - Complaint (*content text box*)
- Use Bootstrap to style this page.


##### Seed 10 complaints into the system:

    5 should have the same email address.

    5 should have content that is at least 1000 characters long. (Lorem Ipsum works fine)

    5 should have content that is at most 100 characters long. (Lorem Ipsum works fine)

    No complaint should have content that is at most 3000 characters long. (Lorem Ipsum works fine)

### Tests

Create the following tests:

  1. `Submission form`:
      1. Verify that the form is on screen.
  2. `Complaints dashboard`:
      1. Verify that there are 10 complaints in total.
      2. Verify that 5 complaints have the same address.
  3. Create 1 short test of your own. The question you should ask yourself is, "what would I test for if I was building this application and the client did not specify any particular tests for me to write?" You may be asked questions about the test you created via a Github pull request review.

## Once Complete
1. Commit and Push your code to your new repository.
2. Send us a pull request, we will review your code and get back to you.
