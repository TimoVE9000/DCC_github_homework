def tjbfun2(x):
    """Sum a length-5 integer sequence and return list with sum repeated 5 times."""
    if not hasattr(x, '__len__'):
        raise TypeError('Input must be a sequence')
    if len(x) != 5:
        raise ValueError('Input must be length 5')
    total = sum(int(v) for v in x)
    return [total] * 5
