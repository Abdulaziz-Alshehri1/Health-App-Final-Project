//
//  data.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct Food {
    let name: String
    let image: UIImage?
    let summary: String

    
}

var purshesdFood: Array <Food> = []

var allFood: Array<Food> = [
    
    Food(name: "Green tea noodles with sticky sweet chilli salmon",
            image: UIImage(named: "Image-11"),
         summary: "Preheat oven to 220°C. Heat peanut oil in a small saucepan over low heat. Add ginger, long green shallot, lemongrass and a pinch of salt. Cook, stirring occasionally, for 6-8 minutes until long green shallot is very soft but not coloured. Remove from heat and cool.Meanwhile, combine honey, olive oil and chilli paste in a bowl. Stir to combine. Line a baking tray with baking paper and add salmon. Rub honey mixture over salmon to coat, then season. Roast for 12-15 minutes for medium. Set aside, loosely covered with foil, to rest for 5 minutes.Cook noodles according to packet instructions. Drain and rinse briefly with warm water.Whisk lime juice, sugar, fish sauce and chilli flakes into the shallot oil mixture. Place noodles in a large bowl with three quarters of the shallot oil, season and toss to combine. Arrange on a serving platter and flake salmon over the top. Drizzle over remaining shallot oil and scatter with extra chilli flakes, toasted sesame seeds and shiso leaves. Serve at room temperature or chilled."),
    
    Food(name: "Lemon chicken",
            image: UIImage(named: "Image-12"),
            summary: "Mix the cornflour with the soy sauce and lemon juice in a small bowl. 2. Heat the oil in a large frying pan or wok over a high heat, add the chicken, capsicum, carrot and broccoli and stir-fry for 2–3 minutes, or until the chicken is lightly browned and the vegetables are beginning to soften. 3. Pour the lemon and soy mixture into the pan, add the chicken stock and spring onions and bring to a simmer. Reduce the heat and cook for 2 minutes, or until the sauce is slightly thickened and the chicken is cooked through, stirring regularl 4. Sprinkle with grated lemon zest and serve with rice."),
    
    Food(name: "Tofu scramble with shredded cabbage and chilli sambal",
            image: UIImage(named: "Image-13"),
            summary: "For the chilli sambal, mix the chillies, garlic, galangal, ginger and eschalot to a paste in a small food processor or mortar and pestle. Heat the oil in a frying pan over medium heat and fry the paste for 5-8 minutes until dark red and fragrant. Add the chilli flakes and palm sugar and stir to dissolve the sugar. Add the tamarind paste and tamari and cook for a further 2-5 minutes until the sauce is thick. Remove from the heat, add the lime juice and leave to cool. This can be stored in the fridge for up to a month. 2. To make the tofu scramble, heat the oil in a large non-stick frying pan over medium-high heat. Fry the garlic and ginger for 1 minute, then add the spring onions, curry powder, turmeric and coriander and fry, stirring, for a further minute. Crumble in the silken tofu and stir to coat in the spice mixture – the tofu will look like scrambled eggs. 3. Toss together the cabbage, cucumber and herbs with the lime juice and a good splash of olive oil. Season well. 4. Toast the bread under a hot grill until golden. Top each slice of toast with tofu and add a handful of cabbage, cucumber and herbs. Sprinkle with crispy shallots and serve with a generous spoonful of chilli sambal."),
    
    Food(name: "Sesame butter radishes with lemon",
            image: UIImage(named: "Image-14"),
            summary: "Melt butter and oil in large frypan over medium-high heat and cook for 3 minutes or until nut brown. Add radish and cook, tossing pan, for 6-8 minutes or until tender. Spoon into a serving bowl. 2. Drizzle over lemon juice and scatter with sesame seeds and salad leaves. Serve with sourdough and extra lemon."),
    
    Food(name: "Serve up a golden roasted chicken with this simple one-tray bake recipe",
            image: UIImage(named: "Image-15"),
            summary: "1. Preheat the oven to 200C. 2. Combine the thyme, anchovies, oregano, chilli, oil, garlic and lemon zest in a bowl. Add the chicken and turn to coat. Add the potatoes and toss to combine. Place on a large baking tray and scatter over the speck. 3. Cut the zested lemon into wedges and add to the tray. Season and roast for 40 minutes or until chicken is golden and potatoes tender. Remove from the oven and top with tomatoes. Roast for a further 10-15 minutes until tomatoes are blistered. 4. Squeeze over roasted lemon juice to serve."),
    
    Food(name: "Rice salad with eggplant",
            image: UIImage(named: "Image-16"),
            summary: "Heat oil in a saucepan over medium heat. Add seeds and curry leaves. Cook for 2 minutes or until mustard seeds start to pop. Add the onion, ginger and two-thirds garlic. Cook 3-4 minutes until onion has softened. Add eggplant, curry powder and sugar. Cook 8-10 minutes until eggplant has softened slightly. 2. Stir in vinegar, half the tomatoes and 1 cup (250ml) water. Bring to the boil. Reduce heat to mediumlow and simmer, loosely covered, for 25 minutes or until eggplant is very tender. Stir in chickpeas and remaining tomatoes. 3. For the rice, combine all ingredients with 2 cups (500ml) cold water and 1 tsp salt flakes in a pan over high heat. Bring to the boil. Reduce heat to low, cover and cook, without stirring, for 12 minutes or until water has been absorbed and rice is tender. Uncover and stir with a fork. 4. For dressing, combine yoghurt, lemon juice and remaining garlic in a small bowl. 5. Place rice in a bowl. Top with eggplant and cucumber. Drizzle over dressing and scatter with mint. Toss to serve."),
    
    Food(name: "Summer chopped salad with citrus sesame dressing",
            image: UIImage(named: "Image-5"),
            summary: "Cut the corn cobs in half and simmer in a large pan of water for 8 minutes, then drain and cool. Cut off the kernels. 2. Heat a little olive oil in a hot pan, add the corn kernels and zucchini and cook until the zucchini is just starting to soften and colour. 3. Meanwhile, make the citrus sesame dressing. Whisk the garlic, tahini, tamari, vinegar and ponzu in a bowl. Slowly add the oils, whisking continuously until emulsified. Whisk in the wasabi and then stir in the eschalot. 4. To deep-fry the chickpeas, heat oil in a large heavy-based pan until a breadcrumb dropped in sizzles. Carefully add chickpeas and fry for 2 minutes, or until they start to blister. Drain in a bowl lined with paper towel. Season with the furikake while still hot and leave to cool completely. (You can store them in an airtight container for up to a day – they make an excellent snack.) 5. Arrange cabbage, cucumber, beetroot and lettuce in a bowl, add apple cider vinegar and toss well. Top with corn, zucchini and edamame. Drizzle over sesame dressing and finish with chickpeas, dill, parsley, spring onions and furikake."),
    
    Food(name: "Taleggio sourdough salad with simple salsa verde",
            image: UIImage(named: "Image-6"),
            summary: "For the simple salsa verde, place all ingredients and 1/2 tsp salt flakes in a food processor and whiz until smooth. Set aside. 2. Heat the oven grill to high heat. Rub sourdough slices with oil and place on a large baking tray. Grill, checking often, for 90 seconds each side or until golden. Rub toasted sourdough with cut side of garlic. Return sourdough to tray, placing some slices on their sides and some lying flat. Arrange Taleggio on top. Grill, checking often, for 1-2 minutes or until cheese has melted. 3. Arrange sourdough on a serving platter with broccolini, asparagus, watercress and hazelnuts. Drizzle with a little salsa verde and scatter with extra tarragon. Serve with lemon wedges and remaining salsa verde."),
    
    Food(name: "Minty lamb with beetroot and charred broccoli",
            image: UIImage(named: "Image-7"),
            summary: "Whiz the fresh mint, parsley, pine nuts, parmesan and garlic in a food processor until a paste. Gradually add 1/2 cup (125ml) oil and whiz until combined. Set aside. 2. Brush lamb with a little extra oil, then season and coat in dried mint. In a separate bowl, toss broccoli and 1 tbs oil. Preheat a chargrill pan to medium-high heat. 3. Cook broccoli, turning, for 3-4 minutes until lightly charred. Set aside. Cook lamb for 4 minutes each side for medium-rare or until cooked to your liking. 4. Whisk the lemon juice and remaining 1 tbs oil together in a bowl. Season. 5. Arrange broccoli, watercress, beetroot and feta on a platter. Top with the lamb, then drizzle over lemon dressing and mint pesto to serve.")
    
]
