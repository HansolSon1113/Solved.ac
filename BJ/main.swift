//A+B
/*
import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    print(Int(array[0])!+Int(array[1])!)
}
*/

//A-B
/*
import Foundation

let input = readLine()
 
if let input = input{
    var array = input.components(separatedBy: " ")
    print(Int(array[0])!-Int(array[1])!)
}
 */

//A/B
/*
import Foundation

let input = readLine()
 
if let input = input{
    var array = input.components(separatedBy: " ")
    print(Double(array[0])!/Double(array[1])!)
}
*/

//엄청난 부자2(Python3)
/*
num = input().split(" ")
n = 10**1000
m = int(num[1])

print("%d\n%d" %(n//m, n%m))
*/

//두 수 비교
/*
import Foundation

let input = readLine()
 
if let input = input{
    var array = input.components(separatedBy: " ")
    let A = Double(array[0])!
    let B = Double(array[1])!
    var compare:String
    if(A>B){
        compare = ">"
    }
    else if(A==B){
        compare = "=="
    }
    else{
        compare = "<"
    }
    print(compare)
}
*/

//별 찍기 - 2
/*
import Foundation

let input = readLine()
 
if var input = input{
    var cnt = Int(input)!
    for x in 0..<cnt{
        let blank = String(repeating: " ", count: cnt-x-1)
        let star = String(repeating: "*", count: x+1)
        print("\(blank)\(star)")
    }
}
*/

//별 찍기 3
/*
 import Foundation

 let input = readLine()
  
 if var input = input{
     var cnt = Int(input)!
     for x in 0..<cnt{
         let star = String(repeating: "*", count: cnt-x)
         print("\(star)")
     }
 }
 */

//주사위 세개
import Foundation

let input = readLine()

if let input = input{
    let array = input.components(separatedBy: " ")
    let Dice1 = Int(array[0])!
    let Dice2 = Int(array[1])!
    let Dice3 = Int(array[2])!
    
    if(Dice1==Dice2 && Dice1==Dice3){
        print(10000+Dice1*1000)
    }
    else if(Dice1==Dice2 || Dice1==Dice3){
        print(1000+Dice1*100)
    }
    else if(Dice2==Dice3){
        print(1000+Dice2*100)
    }
    else{
        let largest = (((Dice1 > Dice2) ? Dice1 : Dice2) > Dice3) ? ((Dice1 > Dice2) ? Dice1 : Dice2) : Dice3 //Or just use max()
        print(largest*100)
    }
    
}
