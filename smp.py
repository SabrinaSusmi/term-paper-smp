import pandas as pd
import os
df = pd.read_csv(r'D:\4-1\SMP (4701)\term-paper-smp\pull_up_method\10b_85c81f6dffc12ac7d4f6cc24f07c8a55020c64eaclass.csv')
output_mean = df.mean(axis=0)
transpose = output_mean.transpose()

print(output_mean.T)
os.makedirs(r'D:\4-1\SMP (4701)\term-paper-smp\pull_up_method\avg_output', exist_ok=True)
transpose.to_csv(r'D:\4-1\SMP (4701)\term-paper-smp\pull_up_method\avg_output\10b_85c81f6dffc12ac7d4f6cc24f07c8a55020c64eaclass.csv')