
import Foundation

/////////////////////hotpot res. info//////////////////////////////////

let allHotpots = [1: ShopCommInfo(seqNo:1, bigPicUrl: "shopPic",
                    name: "Hotpot RestaurantA",
                    location: "Yan An Rd./Jiang Su Rd.",
                    grade: 5,
                    reviewCount: 1),
    2: ShopCommInfo(seqNo:2, bigPicUrl: "shopPic",
        name: "Hotpot RestaurantB",
        location: "Yan An Rd./Jiang Su Rd.",
        grade: 5,
        reviewCount: 1)]


let listedHotpotSeqNo = [1, 2]

/////////////////////reviews//////////////////////////////////
let allReviews = [Review(reviewContent: "Best Mac and cheese I've had in a while and the crack pie has me scratching for more.Best Mac and cheese I've had in a while and the crack pie has me scratching for more."), Review(reviewContent: "b"),Review(reviewContent: "c"),Review(reviewContent: "d")]

/////////////////////intro detail//////////////////////////////////

let allHotpotDetailInfo = [1: ShopDetailInfo(seqNo: 1, intros: [ShopIntro(picUrl: "introPic1", introInfo: "abcabcabcabcabcabcabcabcabcabcabcabc"),
                                                                ShopIntro(picUrl: "introPic2", introInfo: "def"),
                                                                ShopIntro(picUrl: "introPic3", introInfo: "ghi")]),
                            2: ShopDetailInfo(seqNo: 2, intros: [ShopIntro(picUrl: "introPic1", introInfo: "abcabcabcabcabcabcabcabcabcabcabcabc"),
                                            ShopIntro(picUrl: "introPic2", introInfo: "def"),
                                            ShopIntro(picUrl: "introPic3", introInfo: "ghi")])]


/////////////////////menu//////////////////////////////////
let menuIndex = [1,2,3,4,5,6]

let menu = [1:MenuType(id:1, name:"Pot", itemsID:[1,2,3], intro:"abc", titlePic:"pot1"),
            2:MenuType(id:2, name:"Meet&Egg", itemsID:[4,5], intro:"", titlePic:"meat1"),
            3:MenuType(id:3, name:"Seafood", itemsID:[6], intro: "", titlePic:"seafood"),
            4:MenuType(id:4, name:"Vegetable", itemsID:[7], intro:"", titlePic:"vegetable"),
            5:MenuType(id:5, name:"Bean Products", itemsID:[8], intro:"", titlePic:"bean"),
            6:MenuType(id:6, name:"Others", itemsID:[9], intro:"", titlePic:"other")
            ]

let menuItmes = [1: MenuItem(id:1, name:"Spicy hot pot", price:50, titlePic:"pot1", soldCount:1, isRecommended:1, intro:"Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label "),
    2: MenuItem(id:2, name:"Bone soup & spicy", price:50, titlePic:"pot1", soldCount:1, isRecommended:1, intro:"s"),
    3: MenuItem(id:3, name:"Bone soup pot", price:50, titlePic:"pot1", soldCount:1, isRecommended:1, intro:"s"),
    4: MenuItem(id:4, name:"Beef", price:50, titlePic:"meat1", soldCount:1, isRecommended:1, intro:"s"),
    5: MenuItem(id:5, name:"Egg", price:20, titlePic:"meat1", soldCount:1, isRecommended:1, intro:"s"),
    6: MenuItem(id:6, name:"Shrimp", price:20, titlePic:"seafood", soldCount:1, isRecommended:1, intro:"s"),
    7: MenuItem(id:7, name:"Spinach", price:20, titlePic:"vegetable", soldCount:1, isRecommended:1, intro:"s"),
    8: MenuItem(id:8, name:"Tofu", price:10, titlePic:"bean", soldCount:1, isRecommended:1, intro:"s"),
    9: MenuItem(id:9, name:"Beef Tripe", price:30, titlePic:"other", soldCount:1, isRecommended:1, intro:"s"),
]

/////////////////////order//////////////////////////////////
var order = Order()




