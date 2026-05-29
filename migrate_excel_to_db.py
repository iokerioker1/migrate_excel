import pandas as pd
import psycopg2

# ========== 修改1：Excel 文件路径 ==========
df = pd.read_excel(r"C:\Users\lenovo\Desktop\employees.xlsx")

# 简单清洗（去掉 emp_id 为空的行）
df = df.dropna(subset=["emp_id"])

# ========== 修改2：PostgreSQL 密码 ==========
conn = psycopg2.connect(
    database="migration_demo",
    user="postgres",
    password="ks6295250",
    host="localhost"
)
cur = conn.cursor()

for _, row in df.iterrows():
    cur.execute("""
        INSERT INTO employees (emp_id, name, dept, salary, hire_date)
        VALUES (%s, %s, %s, %s, %s)
        ON CONFLICT (emp_id) DO NOTHING
    """, (row["emp_id"], row["name"], row["dept"], row["salary"], row["hire_date"]))

conn.commit()
cur.close()
conn.close()

print("✅ 数据导入完成！")