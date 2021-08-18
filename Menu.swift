class Menu{
    var listCategories: [Category]

    init(){
        listCategories = []
    }
    
    func display(){
    print("-----------------------------------------")
        for category in listCategories{
            //print(category)
            print(category)
            display(subCategory: category)
        }
    print("_________________________________________")
    }
    
    func display(subCategory: Category){
        for item in subCategory.subCategories{
            print("--> \(item)")
            display(subCategory: item)
        }
    }
    
    func addCategory(category: Category){
        self.listCategories.append(category)
    }
}
