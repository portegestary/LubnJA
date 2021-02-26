import sys
import os.path
import gzip
import shutil
import ntpath

def checkFileNotExist(path):
	return (not os.path.exists(path) or not os.path.isfile(path))

def checkDirectoryNotExist(path):	
	return (not os.path.exists(path) or not os.path.isdir(path))


list_path = sys.argv[1]
if len(sys.argv) > 2:
	target_path = sys.argv[2]
else:
	target_path = 'unzipped'

if checkFileNotExist(list_path):
	print "Specified list_path not exists!"
	quit()

if checkDirectoryNotExist(target_path):
	print "Specified target_path not exists!"
	os.mkdir(target_path)



list_file = open(list_path, 'r')
zip_paths = list_file.read().splitlines()

not_existed_zips = []
for zip_path in zip_paths:
	if checkFileNotExist(zip_path):
		print "Specified path : " + zip_path + " not exists!"
		continue
	with gzip.open(zip_path, 'r') as zip_ref:
		content = zip_ref.read()
		file_name = ntpath.basename(zip_path)
		with open(target_path + '/' + os.path.splitext(file_name)[0], 'wb') as unzipped_file:
			shutil.copyfileobj(zip_ref, unzipped_file)

