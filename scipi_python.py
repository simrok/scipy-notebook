import numpy as np
from scipy.linalg import eig

# 2차원 배열 생성
A = np.array([[1, 2], [3, 4]])

# 행렬 곱셈
B = np.dot(A, A)
print("행렬 곱셈 결과:")
print(B)

# 고유값 분해
eigenvalues, eigenvectors = eig(A)
print("\n고유값:")
print(eigenvalues)
print("\n고유벡터:")
print(eigenvectors)
