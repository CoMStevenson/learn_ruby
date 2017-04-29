class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
      @seconds = 0
  end

  def time_string 
      string = ""
      minutes = @seconds/60
      seconds = @seconds % 60
      hours = minutes/60
      minutes = minutes % 60
      counter = 0
      arr = [hours, minutes, seconds]
      while(counter < arr.length)
           if(arr[counter] < 10 and counter == arr.length-1)
               string += "0" + arr[counter].to_s
           elsif(arr[counter] < 10)
              string += "0" + arr[counter].to_s + ":"
           elsif(counter == arr.length-1)
               string += arr[counter].to_s
           else
               string += arr[counter].to_s + ":"
           end
           counter += 1
      end

      string
  end


end
