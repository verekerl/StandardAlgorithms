//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Vereker, Luke (PRKB) on 09/11/2022.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var anyArray = data
        var swaps = true
        while swaps == true {
            swaps = false
            for i in 0..<(anyArray.count)-1 {
                if anyArray[i] > anyArray[i+1] {
                    let temp = anyArray[i]
                    anyArray[i] = anyArray[i+1]
                    anyArray[i+1] = temp
                    swaps = true
                }
            }
        }
        return anyArray
    }
    
    func mergeSort(data: [Int]) -> [Int] {
      var endArray = data
      if endArray.count > 1 {
        let mid: Int = endArray.count / 2
        var left = Array(endArray[0 ..< mid])
        var right = Array(endArray[mid ..< data.count])

        left = mergeSort(data: left)
        right = mergeSort(data: right)

        var i = 0
        var j = 0
        var k = 0

        while i < left.count && j < right.count {
          if left[i] <= right[j] {
            endArray[k] = left[i]
            i += 1
          } else {
            endArray[k] = right[j]
            j += 1
          }
          k += 1
        }
        while i < left.count {
          endArray[k] = left[i]
          i += 1
          k += 1
        }
        while j < right.count {
          endArray[k] = right[j]
          j += 1
          k += 1
        }
      }
      return endArray
    }
    
    func insertionSort(data: [Int]) -> [Int] {
      var list = data
      for i in 1..<list.count {
        var i = i
        let temp = list[i]
        while i > 0 && temp < list[i - 1] {
          list[i] = list[i - 1]
          i -= 1
        }
        list[i] = temp
      }
      return list
    }

}

class Searching {
    
    func linearSearch(data: [Int]) -> [Int] {
        var number = 0
        let anyArray = data
        for i in data {
            if data[i] == anyArray {
                number = data[i]
            }
        }
        return number
    }

}
