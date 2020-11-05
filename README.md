**Mindful API **
----
    Mindful is an API that allows a user to create a user account, sign in and out, and to create moods. Moods will be sent to the user upon signing in.
    When logged in you will be given an authentication token to create new moods.

* **URL**

  user base url: 'v1/users'
  sessions base url: 'v1/sessions'
  mood base url: 'v1/moods'

* **Method:**
  user methods: POST
  sessions methods: POST, DELETE
  mood methods: POST

*  **URL Params**

   *Session 'DELETE' :
        require: id=[integer]
        example: `v1/sessions/1`

* **Data Params**

   *Session 'POST' :
        require: email password

    *User 'POST' :
        require: user{email password password_authentication username}

    *Mood 'POST' :
        require: user_email user_token mood{user_id mood comment}


* **Success Response:**


  * **Code:** 200 <br />
    
    * Session 'POST' : 
        **Content:**
         "data": {
            "user": {
                "email": "example@email.com",
                "id": 1,
                "username": "example",
                "authentication_token": "DmS633q5nqBKZWExVbg_",
                "moods": [
                    {
                        "id": 1,
                        "user_id": 1,
                        "comment": "finished project",
                        "mood": "happy",
                        "created_at": "2020-08-21T13:37:17.086Z",
                        "updated_at": "2020-08-21T13:37:17.086Z"
                    },
                    ..
                ]
            }
         }

        * User 'POST' : 

        **Content:**
            {
                "data": {
                    "user": {
                        "id": 23,
                        "email": "new@email.com",
                        "authentication_token": "Jsheqkx_VpyvzxBosh6x",
                        "username": "new user"
                    }
                }
            }

        *Mood 'POST' : 
        **Content:**
        

* **Error Response:**

  <_Most endpoints will have many ways they can fail. From unauthorized access, to wrongful parameters etc. All of those should be liste d here. It might seem repetitive, but it helps prevent assumptions from being made where they should be._>

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "Log in" }`

  OR

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{ error : "Email Invalid" }`

* **Sample Call:**

  <_Just a sample call to your endpoint in a runnable format ($.ajax call or a curl request) - this makes life easier and more predictable._>

* **Notes:**

  <_This is where all uncertainties, commentary, discussion etc. can go. I recommend timestamping and identifying oneself when leaving comments here._>
