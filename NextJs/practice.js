console.log('azmaeen')

const arr = [1,3,4,5]

const newarr = arr.map((item) => {
return item * 2    
})

console.log(newarr)


const string1 = 'aba'

const splitted = string1.split('').reverse().join('')


console.log(splitted)

const isPalindrome = () => {
    if(string1 == splitted){
        return true
    }else{
        return false
    }
}

console.log(isPalindrome())


const flagged = []

const arrr = [ 1, 1 , 2, 2, 3, 4, 5, 5]

arrr.forEach((item) => {
    if(flagged.includes(item)){
        //add logic for duplicate numbers
        console.log(item)
    }else{
        flagged.push(item)
    }
})


let largest = -Infinity
let secondLargest = -Infinity


for(let num of arrr){
    if(num > largest){

        secondLargest = largest;
        largest = num;
    }else if(num > secondLargest && num < largest){

        secondLargest = num
    }
}

console.log('largest',largest)
console.log('secondLargest', secondLargest)


const nums = [1, 1, 2, 2, 3, 4, 5, 5];

const visited = []

for(let i = 0; i< nums.length;){

    if(visited.includes(nums[i])){

        for(let j = i; j < nums.length -1 ; j++){

            nums[j] = nums[j+1];
        }

        nums.length--;

        
    }else{

        visited.push(nums[i])
        i++
    }
}

console.log(" after removing duplicates : ",nums)

// removing duplicates using set

const unique = [...new Set(arrr)]

console.log("using set : ",unique)
