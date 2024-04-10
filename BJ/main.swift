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
/*
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
*/

//2420
/*
import Foundation
let input = readLine()

if let input = input{
    let array = input.components(separatedBy: " ")
    let N:Int = Int(array[0])!
    let M:Int = Int(array[1])!
    
    print(abs(N-M))
    
}
*/

//2438
/*
import Foundation

let input = readLine()

if let input = input{
    let cnt:Int = Int(input.components(separatedBy: "")[0])!
    
    var string:String = "*"
    
    for i in 0..<cnt{
        print(string)
        string+="*"
    }
    
}
*/

//2558
/*
import Foundation

let input1 = readLine()
let input2 = readLine()

var num1 = 0, num2 = 0

if let input1 = input1{
    num1 = Int(input1.components(separatedBy: "")[0])!
}

if let input2 = input2{
    num2 = Int(input2.components(separatedBy: "")[0])!
}

print(num1 + num2)
*/

//2743
/*
import Foundation

let input = readLine()

if let input = input{
    let string:String = input.components(separatedBy: "")[0]
    
    print(string.count)
}
*/

//2744
/*
import Foundation

let input = readLine()

if let input = input{
    let string = Array(input.components(separatedBy: "")[0])
    var printString: String = ""
    
    for i in 0..<string.count{
        if(string[i].isUppercase){
            printString.append(string[i].lowercased())
        }
        else{
            printString.append(string[i].uppercased())
        }
    }
    
    print(printString)
}
*/

//4999
/*
import Foundation

let input1 = readLine()
let input2 = readLine()

var jaeAah = "", docAah = ""

if let input1 = input1{
    jaeAah = input1.components(separatedBy: "")[0]
}

if let input2 = input2{
    docAah = input2.components(separatedBy: "")[0]
}

if(jaeAah.count >= docAah.count){
    print("go")
}
else{
    print("no")
}
*/

//4470
/*
import Foundation

let input = readLine()

var cnt: Int = 0
var string: String = ""

if let input = input{
    cnt = Int(input.components(separatedBy: "")[0])!
}

for i in 0..<cnt{
    let stringInput = readLine()
    if let stringInput = stringInput{
        string = stringInput.components(separatedBy: "")[0]
    }
    print("\(i+1). \(string)")
}
*/
