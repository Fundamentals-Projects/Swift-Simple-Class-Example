//
//  main.swift
//  Swift-Simple-Class-Example
//
//  Created by Omairys Uzcátegui on 2021-06-10.
//

import Foundation

//Print out titles and income of any movie/series transmitted in 2018
func findTitle(ProductionList: [Producction]){
    for production in ProductionList {
        if production.year == 2018 {
            let income = production.findIncome()
            print("Year: \(production.year) 📅")
            print("Title: \(production.title) 🎬")
            print("Total Income: \(income) 🤑\n")
        }
    }
    
}

//Print the cinema
func printCinema(movie:Movie){
    print("Cinemas: \(movie.cinema) 🎥")
}

//Print no. of episodes
func printCinema(serie:Series){
    print("No. of episodes: \(serie.noEpisodies) 📺")
}

//Function to find a title with the number of title
func findTitleBy(number: Int, ProductionList: [Producction])->Producction!{
    for prd in ProductionList {
        if prd.no == number {
            return prd
        }
    }
    return nil
}

//Function to find a title with the name of cinema
func findTitleBy(cinema: String, ProductionList: [Producction]){
    var flag = false
    for prd in ProductionList {
        if prd is Movie {
            if isCinemaHere(cinema:cinema, movie: prd as! Movie) {
                let reversed = String(prd.title.reversed())
                print("the movie : \(reversed)")
                flag = true
            }
        }
    }
    if !flag {
        print("there are no titles available for that cinema")
    }
}

func isCinemaHere(cinema:String, movie:Movie)->Bool{
    for cin in movie.cinema {
        if cin.lowercased() == (cinema).lowercased(){
            return true
        }
    }
    return false
}

//Enter a movie/series No. then if its a movie print names of all it's cinemas, but if its a series then print its no. of episodes
func showInfo(ProductionList: [Producction]) {
    print("Insert identified number: ")
    let no=Int(readLine()!)!
    let production = findTitleBy(number: no, ProductionList: ProductionList)
    if production != nil {
        if production is Movie {
            printCinema(movie: production! as! Movie)
           }else{
            printCinema(serie: production! as! Series)
           }
       }else{
           print("the production does not exist ⛔️")
       }
}

//Enter a cinema name and print out titles of movies presented in that cinema, but print names in reverse like for example “naM redipS”.
func findByCinema(ProductionList: [Producction]) {
    print("Insert Cinema: ")
    let cinema=readLine()!
    findTitleBy(cinema: cinema, ProductionList: ProductionList)
}

var ProductionList = [Producction]()

ProductionList.append(Movie(no: 12345, title: "Spider Man", year: 2017, cinema: ["Cineplex","Trademax","Rainbow"], income:[250.0,340.0,180.0]))
ProductionList.append(Movie(no: 23456, title: "Black Panther", year: 2018, cinema: ["Cineplex","Cinemax"], income:[233.0,420.0]))
ProductionList.append(Series(no: 45678, title: "Stranger things", year: 2016, noEpisodies: 36, noChannels: 6))
ProductionList.append(Series(no: 76543, title: "Game of thrones", year: 2019, noEpisodies: 75, noChannels: 9))
ProductionList.append(Series(no: 98712, title: "The good place", year: 2018, noEpisodies: 45, noChannels: 3))

print("🎬 Movies and Series 🎬")
repeat{
    // Ask from user which type of user he is:
    print("Choose...:")
    print("1.- Print out titles and income of any movie/series transmitted in 2018")
    print("2.- Show Info Movie o Series")
    print("3.- Enter a Cinema")
    let opt = Int(readLine()!)
    switch opt {
    case 1:
        findTitle(ProductionList: ProductionList)
    case 2:
        showInfo(ProductionList: ProductionList)
    case 3:
        findByCinema(ProductionList: ProductionList)
    default:
        print("Wrong Option⛔️")
    }
    print("\nDo you want select another option? yes/no")
}while(readLine()!=="yes")





