class Clock {
    constructor() {
        // 1. Create a Date object.
        // 2. Store the hours, minutes, and seconds.
        // 3. Call printTime.
        // 4. Schedule the tick at 1 second intervals.
        let current_date = new Date();
        this.hr = current_date.getHours();
        this.min = current_date.getMinutes();
        this.sec = current_date.getSeconds();
        
        }
  
    printTime() {
      // Format the time in HH:MM:SS
      // Use console.log to print it.
      let timeString = `${this.hr} : ${this.min} : ${this.sec}`;
      console.log(timeString)
    }
  
    _tick() {
      // 1. Increment the time by one second.
      // 2. Call printTime.
    setInterval(this.printTime.bind(this), 1000)

    // setInterval(function printTime(){
    //     let timeString = `${this.hr} : ${this.min} : ${this.sec}`;
    //     console.log(timeString)
    // }, 1000)
    }
    }
  
  const clock = new Clock();

  clock._tick();