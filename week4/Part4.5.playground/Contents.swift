func printPyramid(layers: Int) {
    for i in 0...layers-1 {
        for j in 0..<layers-i-1 {
            print(" ", terminator: "")
        }
        for k in 0...(2*i){
            print("*", terminator: "")
        }
        print("")
    }
}


printPyramid(layers: 5)


/*
把AR或VR結合到視訊通話，可以一起互動那樣
 */
