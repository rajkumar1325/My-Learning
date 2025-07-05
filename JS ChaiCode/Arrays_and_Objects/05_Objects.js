// Object De-Structure

const course ={
    courseName : "JS in Hindi",
    price : 99999,
    instructor : "Rashmi Kaushik"
}


// direct access a property
console.log(course.courseName)


// object desturcture
const {courseName} = course;
console.log(courseName)


const {price, instructor} = course; //de-structure
console.log(price) //999
console.log(instructor) //Rashmi Kaushik


// Renaming a property according to me
const {instructor:ins} = course
console.log(ins)