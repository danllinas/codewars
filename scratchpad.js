var Car = function(name, mileage, maxSpeed){
  this.name = name,
  this.mileage = mileage,
  this.maxSpeed = maxSpeed
}

christine = new Car("Christine", "A woman doesn't reveal her age", "Killer")

console.log(`${christine.name} is a beauty. How old is she? ${christine.mileage}. Her max speed is ${christine.maxSpeed}!!`);
