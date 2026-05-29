# PostgreSQL 数据迁移 ETL 演练

## 项目背景
针对运维 / 数据迁移实习岗位要求，完整模拟 **Excel → PostgreSQL** 的数据迁移流程。

## 核心能力覆盖
- PostgreSQL 建表、SQL 查询、主键约束
- Python ETL（pandas + psycopg2）
- DBeaver 客户端操作、数据核对、备份恢复
- Excel vs CSV 数据一致性比对

## 文件说明
| 文件 | 说明 |
|------|------|
| `migrate_excel_to_db.py` | Python ETL 脚本 |
| `employees.xlsx` | 原始数据 |
| `employees.csv` | CSV 格式原始数据 |
| `exported_employees.csv` | 数据库导出核对文件 |
| `backup_demo_plain.sql` | 纯文本 SQL 备份 |

## 操作流程
1. 在 PostgreSQL 中创建目标表 `employees`
2. 使用 Python 读取 Excel / CSV 数据，清洗后入库
3. 通过 DBeaver 导出 CSV 进行数据核对
4. 执行备份，删除数据后恢复验证

## 数据核对结果
- 原 Excel 行数：3
- 导入后数据库行数：3
- 数据一致性：✅ 通过

## 备份恢复验证
- 备份格式：Plain SQL（可读）
- 删除数据后可完整恢复 ✅

## 使用环境
- PostgreSQL 17.6
- DBeaver 26.0.5
- Python 3.14 + pandas + psycopg2