//
//  data.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct Diet {
    let dietName: String
    let Dietimage: UIImage?
    let dietDescription: String
    let link: String
    
    
}

var purshesdDiet: Array <Diet> = []

var allDiet: Array<Diet> = [
    
    Diet(
        dietName: "Keto",
        Dietimage: UIImage(named: "Image-43"),
        dietDescription: "The ketogenic diet is a very low carb, high fat diet that shares many similarities with the Atkins and low carb diets. It involves drastically reducing carbohydrate intake and replacing it with fat. This reduction in carbs puts your body into a metabolic state called ketosis.",
        link: "https://www.healthline.com/nutrition/ketogenic-diet-101#ketosis"
    ),
    
    Diet(dietName: "DASH",
         Dietimage: UIImage(named: "Image-44"),
         dietDescription: "The DASH diet is rich in vegetables, fruits and whole grains. It includes fat-free or low-fat dairy products, fish, poultry, beans and nuts. It limits foods that are high in saturated fat, such as fatty meats and full-fat dairy products.", link: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/in-depth/dash-diet/art-20048456"),
    
    Diet(dietName: "MIND",
         Dietimage: UIImage(named: "Image-45"),
         dietDescription: "MIND stands for the Mediterranean-DASH Intervention for Neurodegenerative Delay.The MIND diet aims to reduce dementia and the decline in brain health that often occurs as people get older. It combines aspects of two very popular diets, the Mediterranean diet and the Dietary Approaches to Stop Hypertension (DASH) diet.Many experts regard the Mediterranean and DASH diets as some of the healthiest. Research has shown they can lower blood pressure and reduce the risk of heart disease, diabetes and several other diseases (1Trusted Source, 2Trusted Source, 3Trusted Source, 4Trusted Source).But researchers wanted to create a diet specifically to help improve brain function and prevent dementia.To do this, they combined foods from the Mediterranean and DASH diets that had been shown to benefit brain health.For example, both the Mediterranean and DASH diets recommend eating a lot of fruit. Fruit intake has not been correlated with improved brain function, but eating berries has been (5Trusted Source, 6Trusted Source).Thus, the MIND diet encourages its followers to eat berries, but does not emphasize consuming fruit in general.Currently, there are no set guidelines for how to follow the MIND diet. Simply eat more of the 10 foods the diet encourages you to eat, and eat less of the five foods the diet recommends you limit.", link: "https://www.healthline.com/nutrition/mind-diet"),
    
    Diet(dietName: "TLC Diet",
         Dietimage: UIImage(named: "Image-46"),
         dietDescription: "This diet has been reviewed by U.S. News' team of expert panelists.  LEARN MOREThe TLC (Therapeutic Lifestyle Changes) diet was created by the National Institute of Health’s National Cholesterol Education Program with the goal of cutting cholesterol as part of a heart-healthy eating regimen.It calls for eating plenty of veggies, fruits, breads, cereals and pasta and lean meats. The guidelines are broad enough that you’ll have a lot of latitude with what you eat.", link: "https://health.usnews.com/best-diet/tlc-diet"),
    
    Diet(dietName: "intermittent fasting",
         Dietimage: UIImage(named: "Image-47"),
         dietDescription: "Many diets focus on what to eat, but intermittent fasting is all about when you eat.With intermittent fasting, you only eat during a specific time. Fasting for a certain number of hours each day or eating just one meal a couple days a week, can help your body burn fat. And scientific evidence points to some health benefits, as well.Johns Hopkins neuroscientist Mark Mattson, Ph.D., has studied intermittent fasting for 25 years. He says that our bodies have evolved to be able to go without food for many hours, or even several days or longer. In prehistoric times, before humans learned to farm, they were hunters and gatherers who evolved to survive — and thrive — for long periods without eating. They had to: It took a lot of time and energy to hunt game and gather nuts and berries.Even 50 years ago, it was easier to maintain a healthy weight. Johns Hopkins dietitian Christie Williams, M.S., R.D.N., explains: “There were no computers, and TV shows turned off at 11 p.m.; people stopped eating because they went to bed. Portions were much smaller. More people worked and played outside and, in general, got more exercise.”Nowadays, TV, the internet and other entertainment are available 24/7. We stay awake for longer hours to catch our favorite shows, play games and chat online. We’re sitting and snacking all day — and most of the night.”Extra calories and less activity can mean a higher risk of obesity, type 2 diabetes, heart disease and other illnesses. Scientific studies are showing that intermittent fasting may help reverse these trends.", link: "https://www.hopkinsmedicine.org/health/wellness-and-prevention/intermittent-fasting-what-is-it-and-how-does-it-work")
    
]
