def get_pv
  puts "Loan amount:"
  pv = gets.chomp.to_f
  if pv.between?(100, 1000000)
    pv
  else
    puts "Please enter a number between 100 and 1,000,000"
    get_pv
  end
end

def get_rate
  puts "APR percentage:"
  rate = gets.chomp.to_f / 100 / 12
  if rate.between?(0.002, 0.03)
    rate
  else
   puts "please make sure you are using the annual rate in percentage"
   get_rate
  end
end

def get_nper
  puts "Length of repayment"
  nper = gets.chomp.to_i
  if nper.between?(6, 72)
    nper
  else
    puts "please enter the length in months (6 to 72)"
    get_nper
  end
end

def pmt(pv, rate, nper)
  pv * (rate / (1 - (1 + rate)**(-nper)))
end

pv = get_pv
rate = get_rate
nper = get_nper

result = pmt(pv, rate, nper)

puts "result: #{result}"
