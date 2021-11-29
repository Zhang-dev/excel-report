import win32com.client
import time
import os

rel_path = os.environ['ATTACHMENT_FILE_NAME']
script_dir = os.path.dirname(os.path.realpath('__file__'))
excel_file_path = os.path.join(script_dir, rel_path)
print(excel_file_path)

excel  = win32com.client.DispatchEx("Excel.Application")
excel.Visible = False

wb = excel .Workbooks.Open(excel_file_path)

wb.RefreshAll()

excel.CalculateUntilAsyncQueriesDone()

wb.Save()
excel .Quit()