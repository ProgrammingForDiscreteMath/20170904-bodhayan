def fact(n):
	"""
	Returns factorial of ``n``.
	"""
	if n==0:
		return 1
	else:
		return n*fact(n-1)

def expr(x,i):
	"""
	Returns ``i``th term of ``exp(x)``.
	"""
	return x**i/fact(i)

a = animate([plot(sum([expr(x, j) for j in range(i)]), xmin=-3, xmax=3, ymin=-2, ymax=20) for i in range(9)])

a.show(delay=50)
