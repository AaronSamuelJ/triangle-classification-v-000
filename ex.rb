i=0
while i<=10
  begin 
    if i==0
      1/0
    end
    raise "random runtime exception"
    p 'I should never get executed'
  rescue ZeroDivisionError
    p 'I am rescuing only ZeroDivisionErrors!'
    i+=1
  end
end 