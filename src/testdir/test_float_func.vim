" test float functions

if !has('float')
  finish
end

func Test_abs()
  call assert_equal('1.23', string(abs(1.23)))
  call assert_equal('1.23', string(abs(-1.23)))
  call assert_equal('0.0', string(abs(0.0)))
  call assert_equal('0.0', string(abs(1.0/(1.0/0.0))))
  call assert_equal('0.0', string(abs(-1.0/(1.0/0.0))))
  call assert_equal('inf', string(abs(1.0/0.0)))
  call assert_equal('inf', string(abs(-1.0/0.0)))
  call assert_equal('nan', string(abs(0.0/0.0)))
endfunc

func Test_sqrt()
  call assert_equal('0.0', string(sqrt(0.0)))
  call assert_equal('1.414214', string(sqrt(2.0)))
  call assert_equal('inf', string(sqrt(1.0/0.0)))
  call assert_equal('nan', string(sqrt(-1.0)))
  call assert_equal('nan', string(sqrt(0.0/0.0)))
endfunc

func Test_log()
  call assert_equal('0.0', string(log(1.0)))
  call assert_equal('-0.693147', string(log(0.5)))
  call assert_equal('-inf', string(log(0.0)))
  call assert_equal('nan', string(log(-1.0)))
  call assert_equal('inf', string(log(1.0/0.0)))
  call assert_equal('nan', string(log(0.0/0.0)))
endfunc

func Test_log10()
  call assert_equal('0.0', string(log10(1.0)))
  call assert_equal('2.0', string(log10(100.0)))
  call assert_equal('2.079181', string(log10(120.0)))
  call assert_equal('-inf', string(log10(0.0)))
  call assert_equal('nan', string(log10(-1.0)))
  call assert_equal('inf', string(log10(1.0/0.0)))
  call assert_equal('nan', string(log10(0.0/0.0)))
endfunc

func Test_exp()
  call assert_equal('1.0', string(exp(0.0)))
  call assert_equal('7.389056', string(exp(2.0)))
  call assert_equal('0.367879', string(exp(-1.0)))
  call assert_equal('inf', string(exp(1.0/0.0)))
  call assert_equal('0.0', string(exp(-1.0/0.0)))
  call assert_equal('nan', string(exp(0.0/0.0)))
endfunc

func Test_sin()
  call assert_equal('0.0', string(sin(0.0)))
  call assert_equal('0.841471', string(sin(1.0)))
  call assert_equal('-0.479426', string(sin(-0.5)))
  call assert_equal('nan', string(sin(0.0/0.0)))
  call assert_equal('nan', string(sin(1.0/0.0)))
  call assert_equal('0.0', string(sin(1.0/(1.0/0.0))))
  call assert_equal('-0.0', string(sin(-1.0/(1.0/0.0))))
endfunc

func Test_asin()
  call assert_equal('0.0', string(asin(0.0)))
  call assert_equal('1.570796', string(asin(1.0)))
  call assert_equal('-0.523599', string(asin(-0.5)))
  call assert_equal('nan', string(asin(1.1)))
  call assert_equal('nan', string(asin(1.0/0.0)))
  call assert_equal('nan', string(asin(0.0/0.0)))
endfunc

func Test_sinh()
  call assert_equal('0.0', string(sinh(0.0)))
  call assert_equal('0.521095', string(sinh(0.5)))
  call assert_equal('-1.026517', string(sinh(-0.9)))
  call assert_equal('inf', string(sinh(1.0/0.0)))
  call assert_equal('-inf', string(sinh(-1.0/0.0)))
  call assert_equal('nan', string(sinh(0.0/0.0)))
endfunc

func Test_cos()
  call assert_equal('1.0', string(cos(0.0)))
  call assert_equal('0.540302', string(cos(1.0)))
  call assert_equal('0.877583', string(cos(-0.5)))
  call assert_equal('nan', string(cos(0.0/0.0)))
  call assert_equal('nan', string(cos(1.0/0.0)))
endfunc

func Test_acos()
  call assert_equal('1.570796', string(acos(0.0)))
  call assert_equal('0.0', string(acos(1.0)))
  call assert_equal('3.141593', string(acos(-1.0)))
  call assert_equal('2.094395', string(acos(-0.5)))
  call assert_equal('nan', string(acos(1.1)))
  call assert_equal('nan', string(acos(1.0/0.0)))
  call assert_equal('nan', string(acos(0.0/0.0)))
endfunc

func Test_cosh()
  call assert_equal('1.0', string(cosh(0.0)))
  call assert_equal('1.127626', string(cosh(0.5)))
  call assert_equal('inf', string(cosh(1.0/0.0)))
  call assert_equal('inf', string(cosh(-1.0/0.0)))
  call assert_equal('nan', string(cosh(0.0/0.0)))
endfunc

func Test_tan()
  call assert_equal('0.0', string(tan(0.0)))
  call assert_equal('0.546302', string(tan(0.5)))
  call assert_equal('-0.546302', string(tan(-0.5)))
  call assert_equal('nan', string(tan(1.0/0.0)))
  call assert_equal('nan', string(cos(0.0/0.0)))
  call assert_equal('0.0', string(tan(1.0/(1.0/0.0))))
  call assert_equal('-0.0', string(tan(-1.0/(1.0/0.0))))
endfunc

func Test_atan()
  call assert_equal('0.0', string(atan(0.0)))
  call assert_equal('0.463648', string(atan(0.5)))
  call assert_equal('-0.785398', string(atan(-1.0)))
  call assert_equal('1.570796', string(atan(1.0/0.0)))
  call assert_equal('-1.570796', string(atan(-1.0/0.0)))
  call assert_equal('nan', string(atan(0.0/0.0)))
endfunc

func Test_atan2()
  call assert_equal('-2.356194', string(atan2(-1, -1)))
  call assert_equal('2.356194', string(atan2(1, -1)))
  call assert_equal('0.0', string(atan2(1.0, 1.0/0.0)))
  call assert_equal('1.570796', string(atan2(1.0/0.0, 1.0)))
  call assert_equal('nan', string(atan2(0.0/0.0, 1.0)))
endfunc

func Test_tanh()
  call assert_equal('0.0', string(tanh(0.0)))
  call assert_equal('0.462117', string(tanh(0.5)))
  call assert_equal('-0.761594', string(tanh(-1.0)))
  call assert_equal('1.0', string(tanh(1.0/0.0)))
  call assert_equal('-1.0', string(tanh(-1.0/0.0)))
  call assert_equal('nan', string(tanh(0.0/0.0)))
endfunc

func Test_fmod()
  call assert_equal('0.13', string(fmod(12.33, 1.22)))
  call assert_equal('-0.13', string(fmod(-12.33, 1.22)))
  call assert_equal('nan', string(fmod(1.0/0.0, 1.0)))
  " On Windows we get "nan" instead of 1.0, accept both.
  let res = string(fmod(1.0, 1.0/0.0))
  if res != 'nan'
    call assert_equal('1.0', res)
  endif
  call assert_equal('nan', string(fmod(1.0, 0.0)))
endfunc

func Test_pow()
  call assert_equal('1.0', string(pow(0.0, 0.0)))
  call assert_equal('8.0', string(pow(2.0, 3.0)))
  call assert_equal('nan', string(pow(2.0, 0.0/0.0)))
  call assert_equal('nan', string(pow(0.0/0.0, 3.0)))
  call assert_equal('nan', string(pow(0.0/0.0, 3.0)))
  call assert_equal('inf', string(pow(2.0, 1.0/0.0)))
  call assert_equal('inf', string(pow(1.0/0.0, 3.0)))
endfunc

func Test_str2float()
  call assert_equal('1.0', string(str2float('1')))
  call assert_equal('1.0', string(str2float(' 1 ')))
  call assert_equal('1.0', string(str2float(' 1.0 ')))
  call assert_equal('1.23', string(str2float('1.23')))
  call assert_equal('1.23', string(str2float('1.23abc')))
  call assert_equal('1.0e40', string(str2float('1e40')))

  call assert_equal('1.0', string(str2float('+1')))
  call assert_equal('1.0', string(str2float('+1')))
  call assert_equal('1.0', string(str2float(' +1 ')))
  call assert_equal('1.0', string(str2float(' + 1 ')))

  call assert_equal('-1.0', string(str2float('-1')))
  call assert_equal('-1.0', string(str2float('-1')))
  call assert_equal('-1.0', string(str2float(' -1 ')))
  call assert_equal('-1.0', string(str2float(' - 1 ')))

  call assert_equal('inf', string(str2float('1e1000')))
  call assert_equal('inf', string(str2float('inf')))
  call assert_equal('-inf', string(str2float('-inf')))
  call assert_equal('inf', string(str2float('Inf')))
  call assert_equal('nan', string(str2float('nan')))
  call assert_equal('nan', string(str2float('NaN')))
endfunc

func Test_floor()
  call assert_equal('2.0', string(floor(2.0)))
  call assert_equal('2.0', string(floor(2.11)))
  call assert_equal('2.0', string(floor(2.99)))
  call assert_equal('-3.0', string(floor(-2.11)))
  call assert_equal('-3.0', string(floor(-2.99)))
  call assert_equal('nan', string(floor(0.0/0.0)))
  call assert_equal('inf', string(floor(1.0/0.0)))
  call assert_equal('-inf', string(floor(-1.0/0.0)))
endfunc

func Test_ceil()
  call assert_equal('2.0', string(ceil(2.0)))
  call assert_equal('3.0', string(ceil(2.11)))
  call assert_equal('3.0', string(ceil(2.99)))
  call assert_equal('-2.0', string(ceil(-2.11)))
  call assert_equal('-2.0', string(ceil(-2.99)))
  call assert_equal('nan', string(ceil(0.0/0.0)))
  call assert_equal('inf', string(ceil(1.0/0.0)))
  call assert_equal('-inf', string(ceil(-1.0/0.0)))
endfunc

func Test_round()
  call assert_equal('2.0', string(round(2.1)))
  call assert_equal('3.0', string(round(2.5)))
  call assert_equal('3.0', string(round(2.9)))
  call assert_equal('-2.0', string(round(-2.1)))
  call assert_equal('-3.0', string(round(-2.5)))
  call assert_equal('-3.0', string(round(-2.9)))
  call assert_equal('nan', string(round(0.0/0.0)))
  call assert_equal('inf', string(round(1.0/0.0)))
  call assert_equal('-inf', string(round(-1.0/0.0)))
endfunc

func Test_trunc()
  call assert_equal('2.0', string(trunc(2.1)))
  call assert_equal('2.0', string(trunc(2.5)))
  call assert_equal('2.0', string(trunc(2.9)))
  call assert_equal('-2.0', string(trunc(-2.1)))
  call assert_equal('-2.0', string(trunc(-2.5)))
  call assert_equal('-2.0', string(trunc(-2.9)))
  call assert_equal('nan', string(trunc(0.0/0.0)))
  call assert_equal('inf', string(trunc(1.0/0.0)))
  call assert_equal('-inf', string(trunc(-1.0/0.0)))
endfunc

func Test_isnan()
  call assert_equal(0, isnan(1.0))
  call assert_equal(1, isnan(0.0/0.0))
  call assert_equal(0, isnan(1.0/0.0))
  call assert_equal(0, isnan('a'))
  call assert_equal(0, isnan([]))
endfunc