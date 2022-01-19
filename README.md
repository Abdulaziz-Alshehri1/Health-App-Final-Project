# Final Project.


# Project Name: Health App.

Project Description:

A healthy application that provides the user with many features in all physical and mental sides , such as exercises, the number of daily steps, body mass calculation and Ideal Weight.  In side of Nutrition, it provides a list of healthy foods and a list of Diets Systems.There is also a page for a Nutritionist that enables him to add to these lists.  The application offers a feature that enables users to know the perfect bedtimes for them in order to get the ideal sleep.  The application is also concerned with the mental aspect, as it offers activities that help the user to improve his brain and memory. The user can write all his health goals and save them on the database.

The application supports Light / Dark mode
The application supports English / Arabic 

__________________________________________

# User Stories:

1. As a User I can sign and Login to the app so that I can save my Goals on Firebase.

2. As a User I can write my Healthy goals in a list and save it on database so that I can do it.

3. As a User I can see alot of activities and workouts so that I can practise with it.

4. As a user I can count my Steps So that  I can see the number of  Daily steps.

5. As a User I can calculate my body mass so that I can reach the desired number.

6. As a User I can play a  thinking & memory games so that I can improve my memory.

7. As a User I can browse a list of healthy foods so that I can prepare it.

8. As a User I can regulate my sleep so that I can get  the healthy and ideal Sleep.

9. As a User I can add Food & Diet System if I am  a Nutritionist so that I can help other Users.

10. As a User I can browse list of Diet systems so that I can use on of them.

11. Aa a User I can use a Dark Mode so that I can relieve the pressure on my eyes.

12. As a User I can choose between English and Arabic Languages so that I can use My favorite languages.



------------------------------------------


# Client / Frontend


| User Path          | Components                               | User Behavior                                                                         |
| ------------------ | ---------------------------------------- | ------------------------------------------------------------------------------------- |
| Launch Screen      | animation Page                           | after animation finished it will open Home page                                       |    
| Home page          | Activities,Mental Activities,Food,Scale  | The user can access all the features available in                                     |
| Activities page    | WorkOuts Lists                           | The user can play all the recorded exercises                                          |
| Mental Activities  | Thinking  and Memory Games               |   The user can play as many mind games as he wants                                    |
| Food page          | Healthy Dishes                           | Browse all Healthy Dishes                                                             |
| Diet page          | Diet List                                | Browse all Diet Systems and Plans                                                     |
| Scale page         | BMI And Ideal wieght                     | for app settings                                                                      |
| User login         | Email,password                           | Login, navigate to Goals Page after login                                             |
| User signup        | Signup Page                              | Signup, navigate to Goals Page after signup                                           |
| Goals page         | Goals List                               | write new goals and save them on Database                                             |       
| Sleep Page         | Hour calculator                          |    user can know his ideal sleep times                                                |
| Steps Page         | Steps Counter                            |   user can know his steps number                                                      |
| Locations Page     | maps                                     |  user can see  healthy location                                                       |


| Nutritionist Path          | Components                               | Nutritionist Behavior                                                                 |
| ------------------         | --------------------------------         | ------------------------------------------------------------------------------------- |
| Nutritionist signup        | Email,password                           | after signup you can add to Dishes List and Diet Lists                                |
| Nutritionist login         | Email,password                           | after login you can add to Dishes List and Diet Systems                               |


-------------------------------------------

# Components

- Home page
- Activities page
- Mental Activities
- Food page
- Diet page 
- Scale page
- User login
- Goals page
- Sleep Page
- Steps Page
- Locations Page 
- Nutritionist Page
- Add to lists page

-------------------------------------------
## Services

- Auth Service
  - auth.login(user)
  - auth.signup(user)
  - auth.logout()
  - auth.me()
  - auth.getUser() // synchronous
- Exit Point Service
  - exitPoint.list()
  - exitPoint.detail(id)
  - exitPoint.add(id)
  - exitPoint.delete(id)
- User Service
  - user.detail(id)



# Server / Backend

## Models

User model

```
{
  user: {type: String, required: true, unique: true},
  email: {type: String, required: true, unique: true},
  password: {type: String, required: true},
  favorites: [{type: Schema.Types.ObjectId,ref:'Exit'}]
  userAgreement: {type: boolean, required: true, default: false}
}
```

Exit model

```
 {
   name: {type: String, required: true},
   img: {type: String},
   aproachLat: {type: Number, required: true}
   aproachLong: {type: Number, required: true}
   aproachDescription: {type: String}
   exitLat: {type: Number, required: true}
   exitLong: {type: Number, required: true}
   exitDescription: {type: String}
   landiZoneLat: {type: Number, required: true}
   landingZoneLong: {type: Number, required: true}
   landingZoneDescription: {type: String}
   creator: {type: Schema.Types.ObjectId,ref:'User'}
   altitud: {type: number}
   
 }
```
### Slides

The url to your presentation slides

[Slides Link](https://docs.google.com/presentation/d/1qccSTVk1yrIQKC3x9inwS0V-bisv_rEhlyh1criKGSA/edit?usp=sharing)

