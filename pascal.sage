class colors:
	"""
	Class initialising unicode for various colors.
	"""
	W  = '\033[0m'  # white (normal)
	R  = '\033[31m' # red
	B  = '\033[34m' # blue

def print_pascal(N):
	"""
	Prints pascal triangle with odd in red and even in blue.
	"""
	a = [[binomial(n,i) for i in range(n+1)] for n in range(N)]
	for i in range(N):
		s = "   "*(n-i)
		for j in range(0,i+1):
			if a[i][j]%2 == 0:
				s += colors.B+'{0:6}'.format(a[i][j])+colors.W
			else:
				s += colors.R+'{0:6}'.format(a[i][j])+colors.W
		print s

print_pascal(32)